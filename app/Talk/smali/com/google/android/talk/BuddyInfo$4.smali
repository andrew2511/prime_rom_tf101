.class Lcom/google/android/talk/BuddyInfo$4;
.super Ljava/lang/Object;
.source "BuddyInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyInfo;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyInfo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/talk/BuddyInfo$4;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$4;->this$0:Lcom/google/android/talk/BuddyInfo;

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo$4;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-static {v1}, Lcom/google/android/talk/BuddyInfo;->access$300(Lcom/google/android/talk/BuddyInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->addToContacts(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    return-void
.end method
