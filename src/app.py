def handler(event, context):
    """Lambda handler

    Parameters
    ----------
    event : Dict[str, Any]
        Lambda event
    context : LambdaContext
        Lambda context
    """
    print(f"Event: {event}")
    print(f"Context: {context}")
    return {"message": "Hello, world!"}
