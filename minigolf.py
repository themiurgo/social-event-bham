import json
from bottle import route, run, request, view, static_file

FNAME = "responses.json"

def read():
    objects = []
    try:
        with open(FNAME, "r+") as f:
            for line in f:
                objects.append(json.loads(line))
    except:
        raise
        pass
    return objects

@route('/')
@view('base.tpl')
def index():
    objects = read()
    return {'objects': objects}

@route('/', method='POST')
@view('base.tpl')
def index():
    name = request.forms.get('name')
    taxi = request.forms.get('taxi')
    role = request.forms.get('role')
    minigolf = request.forms.get('minigolf')
    minigolfp1 = request.forms.get('minigolf-p1')
    dinner = request.forms.get('dinner')
    dinnerp1 = request.forms.get('dinner-p1')
    taxip1 = request.forms.get('taxi-p1')
    responses = {
        'name': name,
        'role': role,
        'taxi': taxi == 'on',
        'minigolf': minigolf == 'on',
        'dinner': dinner == 'on',
        'taxip1': taxip1 == 'on',
        'minigolfp1': minigolfp1 == 'on',
        'dinnerp1': dinnerp1 == 'on',
    }
    with open("responses.json", "a+") as f:
        f.write(json.dumps(responses))
        f.write("\n")
    objects = read()
    return {'message': "You are now signed up",
            'objects': objects}

@route('/css/<filename>')
def server_static_css(filename):
    return static_file(filename, root='./css')

@route('/js/<filename>')
def server_static_js(filename):
    return static_file(filename, root='./js')

@route('/login', method='POST')
def do_login():
    login  = request.forms.get('name')
    password = request.forms.get('bus')
    return login, password

if __name__ == "__main__":
    run(host='localhost', port=8080, debug=True)
