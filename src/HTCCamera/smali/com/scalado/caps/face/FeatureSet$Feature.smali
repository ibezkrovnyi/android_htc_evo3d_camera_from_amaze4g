.class public Lcom/scalado/caps/face/FeatureSet$Feature;
.super Ljava/lang/Object;
.source "FeatureSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/face/FeatureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# static fields
.field public static BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

.field public static EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

.field public static MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

.field public static NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

.field public static SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;


# instance fields
.field private featureDefine:I

.field private featureName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/scalado/caps/face/FeatureSet$Feature;

    const-string v1, "Eye"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/face/FeatureSet$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v0, Lcom/scalado/caps/face/FeatureSet$Feature;

    const-string v1, "Mouth"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/face/FeatureSet$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v0, Lcom/scalado/caps/face/FeatureSet$Feature;

    const-string v1, "Nose"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/face/FeatureSet$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v0, Lcom/scalado/caps/face/FeatureSet$Feature;

    const-string v1, "Smile"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/face/FeatureSet$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v0, Lcom/scalado/caps/face/FeatureSet$Feature;

    const-string v1, "Blink"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/face/FeatureSet$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scalado/caps/face/FeatureSet$Feature;->featureName:Ljava/lang/String;

    iput p2, p0, Lcom/scalado/caps/face/FeatureSet$Feature;->featureDefine:I

    return-void
.end method


# virtual methods
.method protected getNativeDefine()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/face/FeatureSet$Feature;->featureDefine:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet$Feature;->featureName:Ljava/lang/String;

    return-object v0
.end method
