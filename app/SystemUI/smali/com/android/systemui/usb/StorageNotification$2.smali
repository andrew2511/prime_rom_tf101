.class Lcom/android/systemui/usb/StorageNotification$2;
.super Ljava/lang/Object;
.source "StorageNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/StorageNotification;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;

.field final synthetic val$newState:Ljava/lang/String;

.field final synthetic val$oldState:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$2;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iput-object p2, p0, Lcom/android/systemui/usb/StorageNotification$2;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/usb/StorageNotification$2;->val$oldState:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/usb/StorageNotification$2;->val$newState:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$2;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$2;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$2;->val$oldState:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$2;->val$newState:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method
