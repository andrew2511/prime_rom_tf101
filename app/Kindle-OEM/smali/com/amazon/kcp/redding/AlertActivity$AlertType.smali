.class public final enum Lcom/amazon/kcp/redding/AlertActivity$AlertType;
.super Ljava/lang/Enum;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/redding/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/redding/AlertActivity$AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum LINK:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum REMOVE_ITEM:Lcom/amazon/kcp/redding/AlertActivity$AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 37
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const-string v1, "LINK"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->LINK:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 43
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const-string v1, "ANDROID_SETTINGS"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 49
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const-string v1, "REMOVE_ITEM"

    invoke-direct {v0, v1, v5}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->REMOVE_ITEM:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->LINK:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->REMOVE_ITEM:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->$VALUES:[Lcom/amazon/kcp/redding/AlertActivity$AlertType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/redding/AlertActivity$AlertType;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/redding/AlertActivity$AlertType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->$VALUES:[Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/redding/AlertActivity$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    return-object v0
.end method
