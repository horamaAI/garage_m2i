package fr.garage.VroomVroom.security;

import fr.garage.VroomVroom.model.Client;
import fr.garage.VroomVroom.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import java.util.List;


//@Service
public class ChangeDummyPassword implements CommandLineRunner {

    @Autowired
    ClientService clientService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void run(String... args) throws Exception {

        List<Client> clients = this.clientService.findAll();

        for (Client client : clients) {
            System.out.println("HOP " + client.getMotDePasse());
            client.setMotDePasse(this.passwordEncoder.encode("123456"));
            this.clientService.update(client);
        }
    }
}