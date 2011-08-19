.class public final enum Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;
.super Ljava/lang/Enum;
.source "MmiInputQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/MmiInputQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

.field public static final enum ALPHANUMERIC:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

.field public static final enum DATE:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

.field public static final enum IP_ADDRESS:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

.field public static final enum NUMERIC:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

.field public static final enum PHONE:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

.field public static final enum TIME:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

.field public static final enum UNDEFINED:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->UNDEFINED:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    new-instance v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    const-string v1, "ALPHANUMERIC"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->ALPHANUMERIC:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    new-instance v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    const-string v1, "NUMERIC"

    invoke-direct {v0, v1, v5}, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->NUMERIC:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    new-instance v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    const-string v1, "DATE"

    invoke-direct {v0, v1, v6}, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->DATE:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    new-instance v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    const-string v1, "TIME"

    invoke-direct {v0, v1, v7}, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->TIME:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    new-instance v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    const-string v1, "PHONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->PHONE:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    new-instance v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    const-string v1, "IP_ADDRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->IP_ADDRESS:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    sget-object v1, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->UNDEFINED:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->ALPHANUMERIC:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->NUMERIC:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->DATE:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->TIME:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->PHONE:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->IP_ADDRESS:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->$VALUES:[Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->$VALUES:[Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    return-object v0
.end method
