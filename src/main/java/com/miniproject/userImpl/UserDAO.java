package com.miniproject.userImpl;

import com.miniproject.user.UserVO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.EmptyResultDataAccessException;

@Repository
public class UserDAO {

    private final JdbcTemplate jdbcTemplate;

    public UserDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public UserVO selectUserByIdAndPassword(String id, String pass) {
        String sql = "SELECT * FROM users WHERE id = ? AND pass = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{id, pass}, new UserRowMapper());
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public boolean insertUser(UserVO user) {
        String sql = "INSERT INTO users (id, pass, name, phone, nickname) VALUES (?, ?, ?, ?, ?)";
        int rowsAffected = jdbcTemplate.update(sql, user.getId(), user.getPass(), user.getName(), user.getPhone(), user.getNickname());
        return rowsAffected > 0;
    }

    private static class UserRowMapper implements RowMapper<UserVO> {
        @Override
        public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            UserVO user = new UserVO();
            user.setId(rs.getString("id"));
            user.setName(rs.getString("name"));
            user.setPhone(rs.getString("phone"));
            user.setNickname(rs.getString("nickname"));
            return user;
        }
    }
}
