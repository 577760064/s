package cn.com.jit.monitor.biz.core.biz.impl;

import cn.com.jit.monitor.biz.core.biz.IUserService;
import cn.com.jit.monitor.biz.core.dal.dao.IUserDAO;
import cn.com.jit.monitor.biz.core.dal.mapper.UserMapper;
import cn.com.jit.monitor.biz.core.dal.model.UserDo;
import cn.com.jit.monitor.biz.core.model.UserBo;
import cn.com.jit.monitor.biz.core.util.ModelConvert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDAO userDAO;
    @Override
    public void save(UserBo userBo) {
        userDAO.save(userBo);
    }
}
