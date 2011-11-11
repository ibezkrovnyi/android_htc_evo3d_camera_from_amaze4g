.class public Lcom/scalado/caps/facerecognition/RecognitionResult;
.super Ljava/lang/Object;
.source "RecognitionResult.java"


# instance fields
.field private person:Lcom/scalado/caps/facerecognition/Person;

.field private similarity:I


# direct methods
.method constructor <init>(Lcom/scalado/caps/facerecognition/Person;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/facerecognition/RecognitionResult;->person:Lcom/scalado/caps/facerecognition/Person;

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/facerecognition/RecognitionResult;->similarity:I

    iput-object p1, p0, Lcom/scalado/caps/facerecognition/RecognitionResult;->person:Lcom/scalado/caps/facerecognition/Person;

    iput p2, p0, Lcom/scalado/caps/facerecognition/RecognitionResult;->similarity:I

    return-void
.end method


# virtual methods
.method public final getPerson()Lcom/scalado/caps/facerecognition/Person;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/facerecognition/RecognitionResult;->person:Lcom/scalado/caps/facerecognition/Person;

    return-object v0
.end method

.method public final getSimilarity()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/facerecognition/RecognitionResult;->similarity:I

    return v0
.end method
