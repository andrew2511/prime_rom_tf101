.class Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationInformation"
.end annotation


# instance fields
.field private activeNotification:Landroid/app/Notification;

.field private id:I


# direct methods
.method public constructor <init>(Landroid/app/Notification;I)V
    .locals 0
    .parameter "notification"
    .parameter "notificationId"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->activeNotification:Landroid/app/Notification;

    .line 109
    iput p2, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->id:I

    .line 110
    return-void
.end method


# virtual methods
.method public getActiveNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->activeNotification:Landroid/app/Notification;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->id:I

    return v0
.end method
