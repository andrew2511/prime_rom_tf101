.class final enum Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;
.super Ljava/lang/Enum;
.source "AndroidNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

.field public static final enum BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    const-string v1, "BOOK"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->$VALUES:[Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->$VALUES:[Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    return-object v0
.end method
