.class public Lcom/scalado/caps/facerecognition/ClusterFaceData;
.super Ljava/lang/Object;
.source "ClusterFaceData.java"


# instance fields
.field private face:Lcom/scalado/caps/face/Face;

.field private faceIndex:I

.field private score:I


# direct methods
.method constructor <init>(Lcom/scalado/caps/face/Face;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/facerecognition/ClusterFaceData;->face:Lcom/scalado/caps/face/Face;

    iput v1, p0, Lcom/scalado/caps/facerecognition/ClusterFaceData;->faceIndex:I

    iput v1, p0, Lcom/scalado/caps/facerecognition/ClusterFaceData;->score:I

    iput-object p1, p0, Lcom/scalado/caps/facerecognition/ClusterFaceData;->face:Lcom/scalado/caps/face/Face;

    iput p2, p0, Lcom/scalado/caps/facerecognition/ClusterFaceData;->score:I

    iput v1, p0, Lcom/scalado/caps/facerecognition/ClusterFaceData;->faceIndex:I

    return-void
.end method


# virtual methods
.method public final getFace()Lcom/scalado/caps/face/Face;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/facerecognition/ClusterFaceData;->face:Lcom/scalado/caps/face/Face;

    return-object v0
.end method

.method public final getScore()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/facerecognition/ClusterFaceData;->score:I

    return v0
.end method
