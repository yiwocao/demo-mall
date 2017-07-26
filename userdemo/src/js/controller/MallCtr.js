const Ajax = require('../util/ajax.js');
const Util = require('../util/util.js');

export const MallCtr = {
    /*
     * 分页获取商品
     * params: {start,limit}
     */
    getPageCommodity: (params, refresh) => {
        params.status = "3";
        params.orderColumn = "order_no";
        params.orderDir = "asc";
        return Ajax.get("808025", params, refresh);
    },
    // 获取商品详情
    getCommodityDetail: (code, refresh) => (
        Ajax.get("808026", {
            code
        }, refresh)
    ),
    // 提交订单
    applyOrder: (productCode) => (
        Ajax.post("808050", {
            productCode,
            quantity: 1,
            pojo: {
                receiver: 0,
                reMobile: 0,
                reAddress: 0,
                applyUser: Util.getUserId(),
                companyCode: Util.getCompanyCode(),
                systemCode: SYSTEM_CODE
            }
        })
    ),
    // 支付商品订单
    payOrder: (orderCode, payType) => (
        Ajax.post("808061", {
            orderCode,
            payType
        })
    ),
    payOrder1: (orderCode, payType) => (
        Ajax.post("808062", {
            orderCode,
            payType
        })
    ),
    payMoney: (openId, amount) => (
        Ajax.post("802710", {
            openId,
            amount,
            applyUser:Util.getUserId(),
            channelType:"35"
        })
    ),
    /*
     * 分页获取商品订单
     * params: {status,start,limit}
     */
    getPageOrder: (params, refresh) => {
        params.companyCode = Util.getCompanyCode();
        params.applyUser = Util.getUserId();
        params.orderColumn = "apply_datetime";
        params.orderDir = "desc";
        return Ajax.get("808068", params, refresh);
    },
    // 获取订单详情
    getOrderDetail: (code, refresh) => (
        Ajax.get("808066", {code}, refresh)
    )
};
