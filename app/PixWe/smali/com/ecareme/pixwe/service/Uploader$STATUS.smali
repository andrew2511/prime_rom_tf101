.class public final enum Lcom/ecareme/pixwe/service/Uploader$STATUS;
.super Ljava/lang/Enum;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/service/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ecareme/pixwe/service/Uploader$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ecareme/pixwe/service/Uploader$STATUS;

.field public static final enum NG:Lcom/ecareme/pixwe/service/Uploader$STATUS;

.field public static final enum OK:Lcom/ecareme/pixwe/service/Uploader$STATUS;

.field public static final enum XX:Lcom/ecareme/pixwe/service/Uploader$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/ecareme/pixwe/service/Uploader$STATUS;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/service/Uploader$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/service/Uploader$STATUS;->OK:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    new-instance v0, Lcom/ecareme/pixwe/service/Uploader$STATUS;

    const-string v1, "NG"

    invoke-direct {v0, v1, v3}, Lcom/ecareme/pixwe/service/Uploader$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/service/Uploader$STATUS;->NG:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    new-instance v0, Lcom/ecareme/pixwe/service/Uploader$STATUS;

    const-string v1, "XX"

    invoke-direct {v0, v1, v4}, Lcom/ecareme/pixwe/service/Uploader$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/service/Uploader$STATUS;->XX:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ecareme/pixwe/service/Uploader$STATUS;

    sget-object v1, Lcom/ecareme/pixwe/service/Uploader$STATUS;->OK:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecareme/pixwe/service/Uploader$STATUS;->NG:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ecareme/pixwe/service/Uploader$STATUS;->XX:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ecareme/pixwe/service/Uploader$STATUS;->ENUM$VALUES:[Lcom/ecareme/pixwe/service/Uploader$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ecareme/pixwe/service/Uploader$STATUS;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ecareme/pixwe/service/Uploader$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ecareme/pixwe/service/Uploader$STATUS;

    return-object p0
.end method

.method public static values()[Lcom/ecareme/pixwe/service/Uploader$STATUS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ecareme/pixwe/service/Uploader$STATUS;->ENUM$VALUES:[Lcom/ecareme/pixwe/service/Uploader$STATUS;

    array-length v1, v0

    new-array v2, v1, [Lcom/ecareme/pixwe/service/Uploader$STATUS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
