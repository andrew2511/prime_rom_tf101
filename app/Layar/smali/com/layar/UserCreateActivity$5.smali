.class Lcom/layar/UserCreateActivity$5;
.super Ljava/lang/Object;
.source "UserCreateActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserCreateActivity;->_getUserNameFilter()[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserCreateActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserCreateActivity$5;->this$0:Lcom/layar/UserCreateActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 250
    move v7, p2

    .local v7, i:I
    :goto_0
    if-lt v7, p3, :cond_0

    move-object v1, v4

    .line 267
    :goto_1
    return-object v1

    .line 251
    :cond_0
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    sub-int v1, p3, p2

    new-array v9, v1, [C

    .line 253
    .local v9, v:[C
    invoke-static {p1, p2, p3, v9, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 254
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, s:Ljava/lang/String;
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 257
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 258
    .local v5, sp:Landroid/text/SpannableString;
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v1, v0

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object v1, v5

    .line 260
    goto :goto_1

    .end local v5           #sp:Landroid/text/SpannableString;
    :cond_1
    move-object v1, v8

    .line 262
    goto :goto_1

    .line 250
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #v:[C
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
