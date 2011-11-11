.class public Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;
.super Lcom/scalado/caps/Decoder;
.source "LocalTimeWarpDecoder.java"


# instance fields
.field private mLocalTimewarp:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;


# direct methods
.method protected constructor <init>(Lcom/scalado/caps/localtimewarp/LocalTimeWarp;)V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    iput-object p1, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;->mLocalTimewarp:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    iget-object v0, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;->mLocalTimewarp:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-direct {p0, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;->nativeCreate(Lcom/scalado/caps/localtimewarp/LocalTimeWarp;)I

    return-void
.end method

.method private native nativeCreate(Lcom/scalado/caps/localtimewarp/LocalTimeWarp;)I
.end method
