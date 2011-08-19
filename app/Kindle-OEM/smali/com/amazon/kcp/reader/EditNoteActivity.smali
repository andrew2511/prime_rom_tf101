.class public Lcom/amazon/kcp/reader/EditNoteActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "EditNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;
    }
.end annotation


# static fields
.field public static final ANNOTATION_INDEX:Ljava/lang/String; = "annotation_index"

.field private static final DEFAULT_INDEX:I = -0x1

.field public static final NOTE_TEXT_KEY:Ljava/lang/String; = "note_text"

.field public static final RESULT_KEY:Ljava/lang/String; = "result_of_edit"


# instance fields
.field private annotationIndex:I

.field private editText:Landroid/widget/EditText;

.field private saveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/EditNoteActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->saveButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getAddIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    const-string v1, "result_of_edit"

    sget-object v2, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->ADDED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 172
    const-string v1, "note_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    return-object v0
.end method

.method private getDeleteIntent(I)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    const-string v1, "result_of_edit"

    sget-object v2, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->DELETED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 191
    const-string v1, "annotation_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    return-object v0
.end method

.method private getEditIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    const-string v1, "result_of_edit"

    sget-object v2, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->EDITED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 181
    const-string v1, "note_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "annotation_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    return-object v0
.end method

.method private saveAndExit()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    const-string v1, "note_text"

    iget-object v2, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    iget v1, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->annotationIndex:I

    if-eq v1, v3, :cond_1

    .line 144
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget v0, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->annotationIndex:I

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/EditNoteActivity;->getDeleteIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 158
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/amazon/kcp/reader/EditNoteActivity;->setResult(ILandroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/EditNoteActivity;->finish()V

    .line 160
    return-void

    .line 150
    :cond_0
    iget v1, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->annotationIndex:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/EditNoteActivity;->getEditIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/EditNoteActivity;->getAddIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected isCrashBitEnabled()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f0c0064

    .line 73
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/EditNoteActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/EditNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 79
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/EditNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->editText:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/EditNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->saveButton:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/amazon/kcp/reader/EditNoteActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/EditNoteActivity$1;-><init>(Lcom/amazon/kcp/reader/EditNoteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/EditNoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "note_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 110
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/EditNoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "annotation_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/EditNoteActivity;->annotationIndex:I

    .line 111
    return-void
.end method

.method public onSave(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/amazon/kcp/reader/EditNoteActivity;->saveAndExit()V

    .line 130
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/amazon/kcp/reader/EditNoteActivity;->saveAndExit()V

    .line 120
    const/4 v0, 0x1

    return v0
.end method
