.class Lcom/google/android/talk/GtalkServiceActivity$1;
.super Ljava/lang/Object;
.source "GtalkServiceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/GtalkServiceActivity;->registerForServiceStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/GtalkServiceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/GtalkServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/talk/GtalkServiceActivity$1;->this$0:Lcom/google/android/talk/GtalkServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity$1;->this$0:Lcom/google/android/talk/GtalkServiceActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/GtalkServiceActivity;->serviceStateChanged()V

    .line 37
    return-void
.end method
