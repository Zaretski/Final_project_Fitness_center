package com.tsyrulik.dmitry.model.logic;

import com.tsyrulik.dmitry.model.dao.ClientDAO;
import com.tsyrulik.dmitry.model.dao.impl.ClientDAOImpl;
import com.tsyrulik.dmitry.model.entity.Client;
import com.tsyrulik.dmitry.model.entity.Exercises;
import com.tsyrulik.dmitry.model.entity.Food;
import com.tsyrulik.dmitry.model.entity.User;
import com.tsyrulik.dmitry.model.exception.DAOFitnessException;
import com.tsyrulik.dmitry.model.exception.LogicFitnessException;

import java.util.List;

public class ClientReceiver {

    //!!!!!!!!!!!!!!!!
    public void addClient(Client client) throws LogicFitnessException{
        ClientDAO clientDAO = new ClientDAOImpl();
        try {
            clientDAO.createClient(client);
        } catch (DAOFitnessException e) {
            throw new LogicFitnessException(e);
        }
    }

    public Client findClientByEmail(String email) throws LogicFitnessException {
        ClientDAO dao = new ClientDAOImpl();
        try {
            return dao.findClientByEmail(email).get();
        } catch (DAOFitnessException e) {
            throw new LogicFitnessException(e);
        }
    }

    public List<Client> findAllClients()  throws LogicFitnessException {
        ClientDAO dao = new ClientDAOImpl();
        try {
            return dao.findAllClients();
        } catch (DAOFitnessException e) {
            throw new LogicFitnessException(e);
        }
    }

    public Client findClientById(int idClient)  throws LogicFitnessException {
        ClientDAO clientDAO = new ClientDAOImpl();
        try {
            return clientDAO.findClientById(idClient).get();
        } catch (DAOFitnessException e) {
            throw new LogicFitnessException(e);
        }
    }

    public User updateClient(Client client) throws LogicFitnessException {
        ClientDAO clientDAO = new ClientDAOImpl();
        try {
            return clientDAO.updateClient(client);
        } catch (DAOFitnessException e) {
            throw new LogicFitnessException(e);
        }
    }

    public void deleteClient(long idClient) throws LogicFitnessException{
        ClientDAO clientDAO = new ClientDAOImpl();
        try {
            clientDAO.deleteClient(idClient);
        } catch (DAOFitnessException e) {
            throw new LogicFitnessException(e);
        }
    }

    public Food findFoodForClient(long idClient) throws LogicFitnessException {
        ClientDAO dao = new ClientDAOImpl();
        try {
            return dao.findFoodForClient(idClient).get();
        } catch (DAOFitnessException e) {
            throw new LogicFitnessException(e);
        }
    }

    public Exercises findExercisesForClient(long idClient) throws LogicFitnessException {
        ClientDAO dao = new ClientDAOImpl();
        try {
            return dao.findExercisesForClient(idClient).get();
        } catch (DAOFitnessException e) {
            throw new LogicFitnessException(e);
        }
    }

    public List<Food> findAllFoodForClients(long idClient)  throws LogicFitnessException {
        ClientDAO dao = new ClientDAOImpl();
        try {
            return dao.findAllFoodForClientById(idClient);
        } catch (DAOFitnessException e) {
            throw new LogicFitnessException(e);
        }
    }

    public List<Exercises> findAllExercisesForClients(long idClient)  throws LogicFitnessException {
        ClientDAO dao = new ClientDAOImpl();
        try {
            return dao.findAllExercisesForClientById(idClient);
        } catch (DAOFitnessException e) {
            throw new LogicFitnessException(e);
        }
    }

}