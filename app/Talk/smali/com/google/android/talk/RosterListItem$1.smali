.class Lcom/google/android/talk/RosterListItem$1;
.super Ljava/lang/Object;
.source "RosterListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/RosterListItem;


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem$1;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$1;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$000(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$1;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$000(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$1;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-interface {v0, v1}, Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;->onPresenceClicked(Lcom/google/android/talk/RosterListItem;)V

    .line 150
    :cond_0
    return-void
.end method
