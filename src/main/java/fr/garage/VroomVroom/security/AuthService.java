package fr.garage.VroomVroom.security;

        import fr.garage.VroomVroom.dao.IClientDao;
        import fr.garage.VroomVroom.model.Client;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.security.core.userdetails.UserDetails;
        import org.springframework.security.core.userdetails.UserDetailsService;
        import org.springframework.security.core.userdetails.UsernameNotFoundException;
        import org.springframework.stereotype.Service;

@Service
public class AuthService implements UserDetailsService {
    @Autowired
    IClientDao dao;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        Client client = this
                .dao
                .findByAdresseMail(s)
                .orElseThrow(() -> new UsernameNotFoundException("L'adresse mail n'existe pas"));


        return new ClientPrincipal(client);
    }
}
