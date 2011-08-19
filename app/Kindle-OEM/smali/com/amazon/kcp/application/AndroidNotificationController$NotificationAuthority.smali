.class Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationAuthority"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;,
        Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;
    }
.end annotation


# static fields
.field private static final DEBUG_NOTIFICATION_ID:I

.field private static final NOTIFICATIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;",
            "Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;",
            ">;"
        }
    .end annotation
.end field

.field private static nextNotificationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    .line 131
    const/4 v0, 0x1

    sput v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->nextNotificationId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static getActiveNotification(Lcom/amazon/kcp/library/models/IListableBook;)Landroid/app/Notification;
    .locals 3
    .parameter "item"

    .prologue
    .line 158
    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createBookNotificationKey(Lcom/amazon/kcp/library/models/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    .line 160
    .local v0, activeNote:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;
    if-nez v0, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 165
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->getActiveNotification()Landroid/app/Notification;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDebugNotificationId()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method private static getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;)I
    .locals 5
    .parameter

    .prologue
    .line 204
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    const/4 v2, 0x0

    sget v3, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->nextNotificationId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->nextNotificationId:I

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;-><init>(Landroid/app/Notification;I)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->getId()I

    move-result v0

    return v0
.end method

.method public static getId(Lcom/amazon/kcp/library/models/IListableBook;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 141
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createBookNotificationKey(Lcom/amazon/kcp/library/models/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;)I

    move-result v0

    return v0
.end method

.method private static releaseId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public static releaseIdForBookItem(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 219
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createBookNotificationKey(Lcom/amazon/kcp/library/models/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->releaseId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;)V

    .line 220
    return-void
.end method

.method public static removeActiveNotification(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 5
    .parameter

    .prologue
    .line 192
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createBookNotificationKey(Lcom/amazon/kcp/library/models/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;)I

    move-result v1

    .line 194
    sget-object v2, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    new-instance v3, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;-><init>(Landroid/app/Notification;I)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method public static setActiveNotification(Lcom/amazon/kcp/library/models/IListableBook;Landroid/app/Notification;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createBookNotificationKey(Lcom/amazon/kcp/library/models/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;)I

    move-result v1

    .line 181
    sget-object v2, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    new-instance v3, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    invoke-direct {v3, p1, v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;-><init>(Landroid/app/Notification;I)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method
