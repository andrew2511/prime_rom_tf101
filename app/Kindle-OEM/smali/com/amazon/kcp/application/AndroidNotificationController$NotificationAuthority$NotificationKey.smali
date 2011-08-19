.class Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;
    }
.end annotation


# instance fields
.field private final type:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

.field private final uniqueId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "uniqueId"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->type:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    .line 64
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->uniqueId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static createBookNotificationKey(Lcom/amazon/kcp/library/models/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;
    .locals 4
    .parameter "item"

    .prologue
    .line 55
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->isSample()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "-sample"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;-><init>(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 70
    instance-of v1, p1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    if-eqz v1, :cond_1

    .line 72
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->type:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-object v1, v0

    iget-object v1, v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->type:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->uniqueId:Ljava/lang/String;

    check-cast p1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    .end local p1
    iget-object v2, p1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->uniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 75
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 72
    goto :goto_0

    .restart local p1
    :cond_1
    move v1, v3

    .line 75
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 81
    const/16 v1, 0x11

    .local v1, result:I
    const/16 v0, 0x25

    .line 82
    .local v0, prime:I
    mul-int v2, v0, v1

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->type:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->hashCode()I

    move-result v2

    add-int/lit16 v1, v2, 0x275

    .line 83
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 84
    return v1
.end method
