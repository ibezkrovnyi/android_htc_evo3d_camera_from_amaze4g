.class public Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
.super Ljava/lang/Object;
.source "LocalTimeWarp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/localtimewarp/LocalTimeWarp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Priority"
.end annotation


# static fields
.field public static final QUALITY:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

.field public static final SPEED:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;


# instance fields
.field private debugValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    const-string v1, "Quality"

    invoke-direct {v0, v1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->QUALITY:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    new-instance v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    const-string v1, "Speed"

    invoke-direct {v0, v1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->SPEED:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->debugValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->debugValue:Ljava/lang/String;

    return-object v0
.end method
