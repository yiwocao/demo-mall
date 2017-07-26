package com.xnjr.mall.enums;

import java.util.HashMap;
import java.util.Map;

/**
 * @author: xieyj 
 * @since: 2016年11月11日 上午10:09:32 
 * @history:
 */
public enum EBizType {
    MALL_PAY("-30", "购物"), AJ_GWTK("30", "购物退款"), AJ_QRSH("32", "确认收货，商户收钱"), AJ_GMZKQ(
            "-40", "购买折扣券"), YU_PAY("-60", "余额支付")

    , CG_HB2CGB("211", "嗨币兑换菜狗币"), CG_O2O_CGB("90", "菜狗O2O菜狗币支付"), CG_O2O_CGBFD(
            "91", "菜狗O2O菜狗币返点人民币"), CG_O2O_RMB("92", "菜狗O2O人民币支付"), CG_O2O_CGJF(
            "93", "菜狗O2O积分支付")

    , ZH_O2O("-ZH1", "正汇O2O支付"), ZH_STOCK("-ZH2", "正汇分红权分红")

    , CSW_PAY("100", "城市网商品积分购买支付")
    ,AJ_GW("200","商城支付")
    ,GD_MALL("GD_MALL", "积分商城消费"), GD_O2O("GD_O2O", "O2O店铺积分消费");
    public static Map<String, EBizType> getBizTypeMap() {
        Map<String, EBizType> map = new HashMap<String, EBizType>();
        for (EBizType bizType : EBizType.values()) {
            map.put(bizType.getCode(), bizType);
        }
        return map;
    }

    EBizType(String code, String value) {
        this.code = code;
        this.value = value;
    }

    private String code;

    private String value;

    public String getCode() {
        return code;
    }

    public String getValue() {
        return value;
    }

}
