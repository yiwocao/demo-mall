const Ajax = require('../util/ajax.js');
const Util = require('../util/util.js');

export const MenuCtr = {
    // 获取菜单列表
    getMenuList: (refresh) => (
        Ajax.get('610087', {}, refresh)
    ),
    // 获取11个模块列表
    getModuleList: (refresh) => (
        Ajax.get('808007', {}, refresh)
    ),
    // 获取banner列表
    getBannerList: (refresh) => (
        Ajax.get('808072', {
            location: 1,
            orderColumn: "order_no",
            orderDir: "asc"
        }, refresh)
    )
};
