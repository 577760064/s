package cn.com.jit.monitor.rest;

import cn.com.jit.cube.framework.rest.annotation.CubeRestService;
import cn.com.jit.monitor.biz.core.biz.IUserService;
import cn.com.jit.monitor.biz.core.biz.impl.UserServiceImpl;
import cn.com.jit.monitor.biz.core.model.UserBo;
import cn.com.jit.monitor.biz.core.util.RestResponse;
import org.springframework.beans.factory.annotation.Autowired;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

@CubeRestService("testUserResetService")
@Path("/test/v1")
public class TestUserRestService {
    @Autowired
    private IUserService userService;

    @Path("/search")
    @POST
    @Produces({"application/json"})
    @Consumes({"application/json"})
    public RestResponse search(){
        RestResponse restResponse = new RestResponse();
        UserBo user = new UserBo();
        user.setId("11");
        user.setName("11");
        userService.save(user);
        restResponse.setMessage("成功了");
        return restResponse;
    }
}
