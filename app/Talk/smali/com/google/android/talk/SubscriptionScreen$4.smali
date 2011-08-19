.class Lcom/google/android/talk/SubscriptionScreen$4;
.super Ljava/lang/Object;
.source "SubscriptionScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/SubscriptionScreen;->registerForServiceStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SubscriptionScreen;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SubscriptionScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/talk/SubscriptionScreen$4;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen$4;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    invoke-static {v0}, Lcom/google/android/talk/SubscriptionScreen;->access$500(Lcom/google/android/talk/SubscriptionScreen;)V

    .line 171
    return-void
.end method
