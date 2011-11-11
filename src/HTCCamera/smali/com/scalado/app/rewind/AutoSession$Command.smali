.class public final enum Lcom/scalado/app/rewind/AutoSession$Command;
.super Ljava/lang/Enum;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scalado/app/rewind/AutoSession$Command;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABORT:Lcom/scalado/app/rewind/AutoSession$Command;

.field public static final enum CONTINUE:Lcom/scalado/app/rewind/AutoSession$Command;

.field private static final synthetic ENUM$VALUES:[Lcom/scalado/app/rewind/AutoSession$Command;

.field public static final enum SKIP_THIS:Lcom/scalado/app/rewind/AutoSession$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/scalado/app/rewind/AutoSession$Command;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/AutoSession$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/app/rewind/AutoSession$Command;->CONTINUE:Lcom/scalado/app/rewind/AutoSession$Command;

    new-instance v0, Lcom/scalado/app/rewind/AutoSession$Command;

    const-string v1, "SKIP_THIS"

    invoke-direct {v0, v1, v3}, Lcom/scalado/app/rewind/AutoSession$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/app/rewind/AutoSession$Command;->SKIP_THIS:Lcom/scalado/app/rewind/AutoSession$Command;

    new-instance v0, Lcom/scalado/app/rewind/AutoSession$Command;

    const-string v1, "ABORT"

    invoke-direct {v0, v1, v4}, Lcom/scalado/app/rewind/AutoSession$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/app/rewind/AutoSession$Command;->ABORT:Lcom/scalado/app/rewind/AutoSession$Command;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scalado/app/rewind/AutoSession$Command;

    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->CONTINUE:Lcom/scalado/app/rewind/AutoSession$Command;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->SKIP_THIS:Lcom/scalado/app/rewind/AutoSession$Command;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->ABORT:Lcom/scalado/app/rewind/AutoSession$Command;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scalado/app/rewind/AutoSession$Command;->ENUM$VALUES:[Lcom/scalado/app/rewind/AutoSession$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scalado/app/rewind/AutoSession$Command;
    .locals 1

    const-class v0, Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/AutoSession$Command;

    return-object p0
.end method

.method public static values()[Lcom/scalado/app/rewind/AutoSession$Command;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/scalado/app/rewind/AutoSession$Command;->ENUM$VALUES:[Lcom/scalado/app/rewind/AutoSession$Command;

    array-length v1, v0

    new-array v2, v1, [Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
