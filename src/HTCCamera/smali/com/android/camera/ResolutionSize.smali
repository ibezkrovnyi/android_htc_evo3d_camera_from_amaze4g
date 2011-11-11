.class public final Lcom/android/camera/ResolutionSize;
.super Ljava/lang/Object;
.source "ResolutionSize.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static hm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static rsInstance:Lcom/android/camera/ResolutionSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ResolutionSize"

    sput-object v0, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    sput-object v1, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v1, "ResolutionSize"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/camera/ResolutionSize;->init()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/ResolutionSize;
    .locals 1

    sget-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/ResolutionSize;

    invoke-direct {v0}, Lcom/android/camera/ResolutionSize;-><init>()V

    sput-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    :cond_0
    sget-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    return-object v0
.end method

.method private static init()V
    .locals 11

    const v10, 0x147260

    const v9, 0xfb770

    const v8, 0x2bf20

    const v7, 0x61a80

    const v6, 0x3d090

    sget-object v4, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v5, "init"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_super"

    const-string v1, "_fine"

    const-string v3, "_normal"

    const-string v0, "_basic"

    const v4, 0x7f0a00d3

    const v5, 0x1312d0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d3

    const v5, 0x9c400

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d3

    const v5, 0x5f370

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d3

    const v5, 0x30d40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d1

    const v5, 0xb71b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d1

    const v5, 0x5cc60

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d1

    const v5, 0x35b60

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d1

    const v5, 0x1adb0

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cf

    const v5, 0x3f7a0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cf

    const v5, 0x249f0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cf

    const v5, 0x186a0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cf

    const v5, 0xea60

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00ce

    const v5, 0x13c68

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00ce

    const v5, 0xcf08

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00ce

    const/16 v5, 0x7918

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00ce

    const/16 v5, 0x4e20

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d9

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d9

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d9

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d8

    invoke-static {v4, v2, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d8

    invoke-static {v4, v1, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d8

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d8

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e9

    invoke-static {v4, v2, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e9

    invoke-static {v4, v1, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e9

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e9

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d7

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d7

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d7

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d7

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d6

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d6

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d6

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d6

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d5

    const v5, 0x1adb0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d5

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d5

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00d5

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00df

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00df

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00df

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00de

    invoke-static {v4, v2, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00de

    invoke-static {v4, v1, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00de

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00de

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e8

    invoke-static {v4, v2, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e8

    invoke-static {v4, v1, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e8

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e8

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00dd

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00dd

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00dd

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00dd

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00dc

    const v5, 0x7a120

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00dc

    const v5, 0x493e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00dc

    invoke-static {v4, v3, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00dc

    const v5, 0x222e0

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00db

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00db

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00db

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00db

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00da

    const v5, 0x1adb0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00da

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00da

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00da

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e4

    invoke-static {v4, v2, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e4

    invoke-static {v4, v1, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e4

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e4

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e3

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e3

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e3

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e3

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e1

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e1

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e1

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e1

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e2

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e2

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e2

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e2

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e0

    const v5, 0x1adb0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e0

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e0

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e0

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cb

    const v5, 0x1e8480

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cb

    const v5, 0x120160

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cb

    const v5, 0xad570

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00ca

    const v5, 0x17a6b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00ca

    const v5, 0xdbba0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00ca

    const v5, 0xa6040

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00ca

    const v5, 0x57e40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e7

    const v5, 0x17a6b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e7

    const v5, 0xdbba0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e7

    const v5, 0xa6040

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00e7

    const v5, 0x57e40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c8

    const v5, 0xcaa30

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c8

    const v5, 0x8b290

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c8

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c8

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c7

    const v5, 0xb71b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c7

    const v5, 0x7c830

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c7

    const v5, 0x5a550

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c7

    const v5, 0x1a1f8

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c6

    const v5, 0x900b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c6

    const v5, 0x64190

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c6

    const v5, 0x53020

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c6

    const v5, 0x14c08

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c4

    invoke-static {v4, v2, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c4

    const v5, 0x222e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c4

    const v5, 0x1fbd0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00c4

    const v5, 0xbb80

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cd

    const v5, 0xa028

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cd

    const/16 v5, 0x5208

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cd

    const/16 v5, 0x32c8

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    const v4, 0x7f0a00cd

    const/16 v5, 0x2328

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    return-void
.end method

.method private static put(ILjava/lang/String;I)V
    .locals 4

    sget-object v0, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSize(ILjava/lang/String;)I
    .locals 4

    sget-object v2, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v3, "getSize"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method
