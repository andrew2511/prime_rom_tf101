.class public Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;
.super Ljava/lang/Object;
.source "SearchIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/SearchIndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexBuilder"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mSbContent:Ljava/lang/StringBuilder;

.field private mSbElementContent:Ljava/lang/StringBuilder;

.field private mSbName:Ljava/lang/StringBuilder;

.field private mSbTokens:Ljava/lang/StringBuilder;

.field private mUniqueElements:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public appendContent(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContent(Ljava/lang/String;I)V

    .line 136
    return-void
.end method

.method public appendContent(Ljava/lang/String;I)V
    .locals 2
    .parameter "value"
    .parameter "format"

    .prologue
    const/16 v1, 0x20

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 143
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public appendContentFromColumn(Ljava/lang/String;)V
    .locals 1
    .parameter "columnName"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public appendContentFromColumn(Ljava/lang/String;I)V
    .locals 1
    .parameter "columnName"
    .parameter "format"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContent(Ljava/lang/String;I)V

    .line 132
    return-void
.end method

.method public appendName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public appendToken(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public commit()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 113
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    .end local v0           #content:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "columnName"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "columnName"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokens()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 81
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 84
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 85
    return-void
.end method

.method setCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n Tokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
