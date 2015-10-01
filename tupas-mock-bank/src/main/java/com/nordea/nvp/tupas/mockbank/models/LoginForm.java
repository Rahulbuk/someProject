package com.nordea.nvp.tupas.mockbank.models;

/**
 * Created by bhanerah on 10/2/2015.
 */
public class LoginForm {

    String bankid;
    String name;
    String password;

    public String getBankid() {
        return bankid;
    }

    public void setBankid(String bankid) {
        this.bankid = bankid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
