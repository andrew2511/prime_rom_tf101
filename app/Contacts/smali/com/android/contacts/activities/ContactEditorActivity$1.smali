.class Lcom/android/contacts/activities/ContactEditorActivity$1;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 101
    return-void
.end method
