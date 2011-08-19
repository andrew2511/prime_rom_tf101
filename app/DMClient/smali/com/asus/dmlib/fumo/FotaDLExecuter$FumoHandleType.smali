.class public final enum Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;
.super Ljava/lang/Enum;
.source "FotaDLExecuter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/fumo/FotaDLExecuter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FumoHandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

.field public static final enum DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

.field public static final enum DOWNLOAD_AND_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

.field public static final enum UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    new-instance v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    new-instance v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    const-string v1, "DOWNLOAD_AND_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->DOWNLOAD_AND_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->DOWNLOAD_AND_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->$VALUES:[Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;
    .locals 1
    .parameter "name"

    .prologue
    .line 64
    const-class v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->$VALUES:[Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    invoke-virtual {v0}, [Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    return-object v0
.end method
