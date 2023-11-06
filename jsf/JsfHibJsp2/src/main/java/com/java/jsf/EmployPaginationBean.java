package com.java.jsf;

import java.util.List;

import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

public class EmployPaginationBean {
    private DataModel<Employ> employDataModel;
    private int rowsPerPage = 2;
    private int firstRow;

    public EmployPaginationBean() {
        refresh();
    }

    public DataModel<Employ> getEmployDataModel() {
        return employDataModel;
    }

    public void setEmployDataModel(DataModel<Employ> employDataModel) {
        this.employDataModel = employDataModel;
    }

    public int getRowsPerPage() {
        return rowsPerPage;
    }

    public void setRowsPerPage(int rowsPerPage) {
        this.rowsPerPage = rowsPerPage;
    }

    public int getFirstRow() {
        return firstRow;
    }

    public void setFirstRow(int firstRow) {
        this.firstRow = firstRow;
        refresh();
    }

    public void refresh() {
        EmployDAOImpl employDAO = new EmployDAOImpl();
        List<Employ> employList = employDAO.getEmployListInRange(firstRow, rowsPerPage);
        employDataModel = new ListDataModel<>(employList);
    }

    public void nextPage() {
        if (firstRow + rowsPerPage < employDataModel.getRowCount()) {
            firstRow += rowsPerPage;
            refresh();
        }
    }

    public void previousPage() {
        if (firstRow - rowsPerPage >= 0) {
            firstRow -= rowsPerPage;
            refresh();
        }
    }

    public boolean hasNextPage() {
        return firstRow + rowsPerPage < employDataModel.getRowCount();
    }

    public boolean hasPreviousPage() {
        return firstRow - rowsPerPage >= 0;
    }
    
}
