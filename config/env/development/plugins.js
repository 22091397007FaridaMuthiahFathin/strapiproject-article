module.exports = () => ({
    email: {

        provider: 'nodemailer',
        providerOptions: {
            host: 'smtp.gmail.com',
            port: 587,
            auth: {
                user: 'aviana.22059@mhs.unesa.ac.id',
                pass: 'gnneasaucwpcpyov', // ketik aja di google : google app password
            },
        },
        settings: {
            defaultFrom: 'aviana.22059@mhs.unesa.ac.id',
            defaultReplyTo: 'aviana.22059@mhs.unesa.ac.id',
        },
    },
});
