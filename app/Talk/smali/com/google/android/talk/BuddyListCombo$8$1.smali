.class Lcom/google/android/talk/BuddyListCombo$8$1;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyListCombo$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/BuddyListCombo$8;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$8$1;->this$1:Lcom/google/android/talk/BuddyListCombo$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8$1;->this$1:Lcom/google/android/talk/BuddyListCombo$8;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1800(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1254
    return-void
.end method
