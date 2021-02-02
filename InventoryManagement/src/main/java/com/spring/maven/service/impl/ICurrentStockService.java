/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service.impl;

import com.spring.maven.common.ICommonService;
import com.spring.maven.model.CurrentStock;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Dell
 */
public interface ICurrentStockService extends ICommonService<CurrentStock> {

    public CurrentStock getByProductCode(int productCode);

    public List<CurrentStock> searchStockReport(HttpServletRequest request);

}
