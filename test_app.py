from app import app

def test_home():
    client = app.test_client()
    response = client.get("/")
    assert response.data == b"Hello, World!"

    """
    The b means bytes.
    HTTP responses are sent as bytes, not Python strings."""
