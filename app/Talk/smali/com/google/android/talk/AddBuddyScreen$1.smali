.class Lcom/google/android/talk/AddBuddyScreen$1;
.super Ljava/lang/Object;
.source "AddBuddyScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AddBuddyScreen;->registerForServiceStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AddBuddyScreen;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AddBuddyScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/talk/AddBuddyScreen$1;->this$0:Lcom/google/android/talk/AddBuddyScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen$1;->this$0:Lcom/google/android/talk/AddBuddyScreen;

    invoke-static {v0}, Lcom/google/android/talk/AddBuddyScreen;->access$000(Lcom/google/android/talk/AddBuddyScreen;)V

    .line 108
    return-void
.end method
