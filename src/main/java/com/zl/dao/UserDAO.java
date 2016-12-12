package com.zl.dao;

import com.zl.model.User;
import org.apache.ibatis.annotations.*;

/**
 * Created by zhouliang on 2016/10/13.
 */
@Mapper
public interface UserDAO {
    String TABLE_NAME = " tb_user ";
    String INSERT_FIELDS = " id , name, password, salt, head_url ";
    String SELECT_FIELDS = " id, " + INSERT_FIELDS;

/*    @Insert({"insert into ", TABLE_NAME, "(", INSERT_FIELDS,
            ") values (#{id},#{name},#{password},#{salt},#{headUrl})"})
    int addUser(User user);*/
    int addUser(User user);

    @Select({"select ", SELECT_FIELDS, " from ", TABLE_NAME, " where id=#{id}"})
    User selectById(int id);

    @Select({"select ", SELECT_FIELDS, " from ", TABLE_NAME, " where name=#{name}"})
    User selectByName(String name);

    @Update({"update ", TABLE_NAME, " set password=#{password} where id=#{id}"})
    @Options(useGeneratedKeys = false)
    void updatePassword(User user);

    @Delete({"delete from ", TABLE_NAME, " where id=#{id}"})
    void deleteById(int id);
}
