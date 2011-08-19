.class public Lcom/android/contacts/editor/PhotoEditorView;
.super Landroid/widget/FrameLayout;
.source "PhotoEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;


# instance fields
.field private mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mFrameView:Landroid/view/View;

.field private mHasSetPhoto:Z

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mReadOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method


# virtual methods
.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 70
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/PhotoEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/PhotoEditorView$1;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method protected resetDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 169
    return-void

    :cond_0
    move v1, v2

    .line 166
    goto :goto_0
.end method

.method public setDeletable(Z)V
    .locals 0
    .parameter "deletable"

    .prologue
    .line 180
    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    .line 175
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "photo"

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 130
    iget-object v4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data15"

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 131
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    .line 154
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 136
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 139
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 140
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 141
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 143
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data15"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 144
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 147
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "is_super_primary"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 152
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PhotoEditorView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize photo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSuperPrimary(Z)V
    .locals 3
    .parameter "superPrimary"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v1, "is_super_primary"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 161
    return-void

    .line 160
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 5
    .parameter "kind"
    .parameter "values"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    const/4 v4, 0x0

    .line 92
    iput-object p2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 93
    iput-boolean p4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    .line 95
    invoke-virtual {p5, p3, p1, p2, v4}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setId(I)V

    .line 97
    if-eqz p2, :cond_1

    .line 99
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 100
    .local v1, photoBytes:[B
    if-eqz v1, :cond_0

    .line 101
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, photo:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 106
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 107
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 114
    .end local v0           #photo:Landroid/graphics/Bitmap;
    .end local v1           #photoBytes:[B
    :goto_0
    return-void

    .line 109
    .restart local v1       #photoBytes:[B
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_0

    .line 112
    .end local v1           #photoBytes:[B
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_0
.end method
