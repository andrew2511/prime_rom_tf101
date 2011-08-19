.class public final enum Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;
.super Ljava/lang/Enum;
.source "FotaDLExecuter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/fumo/FotaDLExecuter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

.field public static final enum CONFIRM_DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

.field public static final enum CONFIRM_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

.field public static final enum DOWNLOADING:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

.field public static final enum END:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

.field public static final enum EXECUTE_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

.field public static final enum READY_TO_FOTA:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    const-string v1, "READY_TO_FOTA"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->READY_TO_FOTA:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    new-instance v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    const-string v1, "CONFIRM_DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->CONFIRM_DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    new-instance v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->DOWNLOADING:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    new-instance v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    const-string v1, "CONFIRM_UPDATE"

    invoke-direct {v0, v1, v6}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->CONFIRM_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    new-instance v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    const-string v1, "EXECUTE_UPDATE"

    invoke-direct {v0, v1, v7}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->EXECUTE_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    new-instance v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    const-string v1, "END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->END:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->READY_TO_FOTA:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->CONFIRM_DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->DOWNLOADING:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->CONFIRM_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->EXECUTE_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->END:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->$VALUES:[Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->$VALUES:[Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-virtual {v0}, [Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    return-object v0
.end method
