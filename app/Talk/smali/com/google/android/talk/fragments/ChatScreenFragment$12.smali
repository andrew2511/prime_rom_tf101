.class Lcom/google/android/talk/fragments/ChatScreenFragment$12;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->registerForServiceStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$12;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$12;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->serviceStateChanged()V

    .line 1376
    return-void
.end method
