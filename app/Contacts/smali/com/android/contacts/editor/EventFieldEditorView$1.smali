.class Lcom/android/contacts/editor/EventFieldEditorView$1;
.super Ljava/lang/Object;
.source "EventFieldEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/EventFieldEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/EventFieldEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/EventFieldEditorView;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/contacts/editor/EventFieldEditorView$1;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView$1;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/EventFieldEditorView;->showDialog(I)V

    .line 137
    return-void
.end method
