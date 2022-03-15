package model.appartamento;

import UtilityClass.Ricerca;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

public interface AppartamentoModel<T> {
    public Collection<AppartamentoBean> OrderByData() throws SQLException;

    public Collection<AppartamentoBean> RetrieveByTipo(String tipo) throws SQLException;

    public Collection<AppartamentoBean> OrderByPrezzo() throws SQLException;

    public Collection<AppartamentoBean> OrderByVisite() throws SQLException;

    public void doSave(AppartamentoBean app) throws SQLException;

    public ArrayList<AppartamentoBean> barraRicerca(Ricerca ricerca) throws SQLException;

    public void updateVisite(AppartamentoBean app) throws SQLException;

    public AppartamentoBean RetrieveById(int id) throws SQLException;

    public Collection<AppartamentoBean> RetrieveAllByAgente(int idAgente) throws SQLException;

    public Collection<AppartamentoBean> RetrieveAllAppartamento() throws SQLException;

    public int RetrieveByBean(AppartamentoBean bean) throws SQLException;
}
