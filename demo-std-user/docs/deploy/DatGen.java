import java.io.File;
import java.io.FileOutputStream;
import java.security.Key;
import java.security.Security;

import javax.crypto.Cipher;

public class DatGen {
    public static void main(String[] args) throws Exception {
        if (args != null && args.length == 1) {
            genConfigFile(args[0], "config.dat");
        } else {
            System.out.println("java DatGen json");
        }
    }

    public static void genConfigFile(String configstr, String outfilepath)
            throws Exception {
        DESUtil des = new DESUtil();
        byte[] charbyte = des.hexStr2ByteArr(des.encrypt(configstr));
        FileOutputStream fo = new FileOutputStream(new File(outfilepath));
        fo.write(charbyte, 0, charbyte.length);
        fo.flush();
        fo.close();
    }
}

class DESUtil {
    private final static String _DES = "DES";

    private String encodeType = "UTF-8";

    private static String strDefaultKey = "_Hundsun";// ָ���ַ�����������Կ��8byte���ȣ�����8λֻȡǰ8λ������λ�Զ���0

    private Cipher encryptCipher = null;

    private Cipher decryptCipher = null;

    /**
     * Ĭ�Ϲ��췽����ʹ��Ĭ����Կ
     *
     * @throws Exception
     */
    public DESUtil() throws Exception {
        this(strDefaultKey);
    }

    /**
     * ָ����Կ���췽��
     *
     * @param strKey ָ������Կ��8byte���ȣ�����8λֻȡǰ8λ������λ�Զ���0
     * @throws Exception
     */
    public DESUtil(String strKey, String encode) throws Exception {
        encodeType = encode;
        Security.addProvider(new com.sun.crypto.provider.SunJCE());
        Key key = getKey(strKey.getBytes(encodeType));
        encryptCipher = Cipher.getInstance(_DES);
        encryptCipher.init(Cipher.ENCRYPT_MODE, key);
        decryptCipher = Cipher.getInstance(_DES);
        decryptCipher.init(Cipher.DECRYPT_MODE, key);
    }

    /**
     * ָ����Կ�ͱ����ʽ�Ĺ��췽��
     *
     * @param strKey ָ������Կ��8byte���ȣ�����8λֻȡǰ8λ������λ�Զ���0
     * @throws Exception
     */
    public DESUtil(String strKey) throws Exception {
        Security.addProvider(new com.sun.crypto.provider.SunJCE());
        Key key = getKey(strKey.getBytes(encodeType));
        encryptCipher = Cipher.getInstance(_DES);
        encryptCipher.init(Cipher.ENCRYPT_MODE, key);
        decryptCipher = Cipher.getInstance(_DES);
        decryptCipher.init(Cipher.DECRYPT_MODE, key);
    }

    /**
     * �����ֽ�����
     *
     * @param arrB ����ܵ��ֽ�����
     * @return ���ܺ���ֽ�����
     * @throws Exception
     */
    public byte[] encrypt(byte[] arrB) throws Exception {
        return encryptCipher.doFinal(arrB);
    }

    /**
     * �����ֽ�����
     *
     * @param arrB ����ܵ��ֽ�����
     * @return ���ܺ���ֽ�����
     * @throws Exception
     */
    public byte[] decrypt(byte[] arrB) throws Exception {
        return decryptCipher.doFinal(arrB);
    }

    /**
     * �����ַ���
     *
     * @param strIn ����ܵ��ַ���
     * @return ���ܺ���ַ���
     * @throws Exception
     */
    public String encrypt(String strIn) throws Exception {
        return byteArr2HexStr(encrypt(strIn.getBytes(encodeType)));
    }

    /**
     * �����ַ���
     *
     * @param strIn ����ܵ��ַ���
     * @return ���ܺ���ַ���
     * @throws Exception
     */
    public String decrypt(String strIn) throws Exception {
        return new String(decrypt(hexStr2ByteArr(strIn)), encodeType);
    }

    /**
     * ��ָ���ַ���������Կ����Կ������ֽ����鳤��Ϊ8λ
     * ����8λʱ���油0������8λֻȡǰ8λ
     *
     * @param arrBTmp ���ɸ��ַ������ֽ�����
     * @return ���ɵ���Կ
     * @throws java.lang.Exception
     */
    private Key getKey(byte[] arrBTmp) {
        // ����һ���յ�8λ�ֽ����飨Ĭ��ֵΪ0��
        byte[] arrB = new byte[8];
        // ��ԭʼ�ֽ�����ת��Ϊ8λ
        for (int i = 0; i < arrBTmp.length && i < arrB.length; i++) {
            arrB[i] = arrBTmp[i];
        }
        // ������Կ
        Key key = new javax.crypto.spec.SecretKeySpec(arrB, _DES);
        return key;
    }

    /**
     * ��byte����ת��Ϊ��ʾ16����ֵ���ַ�����
     * �磺byte[]{8,18}ת��Ϊ��0813��
     * ��public static byte[] hexStr2ByteArr(String strIn)
     * ��Ϊ�����ת������
     *
     * @param arrB ��Ҫת����byte����
     * @return ת������ַ���
     * @throws Exception �������������κ��쳣�������쳣ȫ���׳�
     */
    public String byteArr2HexStr(byte[] arrB) throws Exception {
        int iLen = arrB.length;
        // ÿ��byte�������ַ����ܱ�ʾ�������ַ����ĳ��������鳤�ȵ�����
        StringBuffer sb = new StringBuffer(iLen * 2);
        for (int i = 0; i < iLen; i++) {
            int intTmp = arrB[i];
            // �Ѹ���ת��Ϊ����
            while (intTmp < 0) {
                intTmp = intTmp + 256;
            }
            // С��0F������Ҫ��ǰ�油0
            if (intTmp < 16) {
                sb.append("0");
            }
            sb.append(Integer.toString(intTmp, 16));
        }
        return sb.toString().toUpperCase();
    }

    /**
     * ����ʾ16����ֵ���ַ���ת��Ϊbyte���飬
     * ��public String byteArr2HexStr(byte[] arrB)
     * ��Ϊ�����ת������
     *
     * @param strIn ��Ҫת�����ַ���
     * @return ת�����byte����
     * @throws Exception �������������κ��쳣�������쳣ȫ���׳�
     */
    public byte[] hexStr2ByteArr(String strIn) throws Exception {
        byte[] arrB = strIn.getBytes(encodeType);
        int iLen = arrB.length;
        // �����ַ���ʾһ���ֽڣ������ֽ����鳤�����ַ������ȳ���2
        byte[] arrOut = new byte[iLen / 2];
        for (int i = 0; i < iLen; i = i + 2) {
            String strTmp = new String(arrB, i, 2, encodeType);// "UTF-8"
            arrOut[i / 2] = (byte) Integer.parseInt(strTmp, 16);
        }
        return arrOut;
    }

}
