# AWS-Face-Recognisation2
# Lambda Code (index.py)
import boto3
import json
import logging

logger = logging.getLogger()
logger.setLevel(logging.INFO)

rekognition = boto3.client('rekognition')

def handler(event, context):
    bucket = event['Records'][0]['s3']['bucket']['name']
    key = event['Records'][0]['s3']['object']['key']

    response = rekognition.detect_faces(
        Image={
            'S3Object': {
                'Bucket': bucket,
                'Name': key
            }
        },
        Attributes=['ALL']
    )

    logger.info("Face details: %s", json.dumps(response['FaceDetails'], indent=2))
