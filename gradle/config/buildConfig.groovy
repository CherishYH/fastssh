environments{
    local{
        db{
            ip = 'localhost'
            port = 3305
        }
    }
    test{
        db{
            ip = '127.0.0.1'
            port = 3305
        }
    }
    uat{
        db{
            ip = '192.168.1.10'
            port = 3305
        }
    }
    prod{

    }
}