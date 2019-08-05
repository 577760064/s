package cn.com.jit.monitor.biz.core.dal.dao.impl;

import cn.com.jit.monitor.biz.core.dal.dao.IUserDAO;
import cn.com.jit.monitor.biz.core.dal.mapper.UserMapper;
import cn.com.jit.monitor.biz.core.dal.model.UserDo;
import cn.com.jit.monitor.biz.core.model.UserBo;
import cn.com.jit.monitor.biz.core.util.ModelConvert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAoImpl implements IUserDAO {
    @Autowired
    private UserMapper userMapper;
    @Override
    public void save(UserBo userBo) {
        ModelConvert<UserDo> userDoModelConvert = new ModelConvert<>();
        UserDo userDo = userDoModelConvert.convertFrom(userBo,UserDo.class);
        userMapper.insertUser(userDo);
    }
}
