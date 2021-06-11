package fr.garage.VroomVroom.service;

import fr.garage.VroomVroom.dao.IClientDao;
import fr.garage.VroomVroom.model.Client;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientService {
    @Autowired
    IClientDao dao;

    public List<Client> findAll() {
        return this.dao.findAll();
    }

    public Client findById(int id) {
        return this.dao.findById(id).orElseThrow();
    }

    public Client add(Client client) {
        return this.dao.save(client);
    }
}
