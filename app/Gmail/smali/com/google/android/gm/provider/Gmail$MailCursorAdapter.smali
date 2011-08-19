.class public abstract Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MailCursorAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$MailCursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "mailCursor"
    .parameter "autoRequery"

    .prologue
    .line 1811
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1812
    return-void

    .line 1811
    :cond_0
    iget-object v0, p2, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method


# virtual methods
.method public swapMailCursor(Lcom/google/android/gm/provider/Gmail$MailCursor;)V
    .locals 1
    .parameter "mailCursor"

    .prologue
    .line 1819
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1820
    return-void

    .line 1819
    :cond_0
    iget-object v0, p1, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method
