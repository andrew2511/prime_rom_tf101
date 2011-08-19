.class Lcom/android/providers/contacts/ContactsProvider2$DirectoryCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ContactsProvider2.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryCursorWrapper"
.end annotation


# instance fields
.field private final mCrossProcessCursor:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/CrossProcessCursor;)V
    .locals 0
    .parameter "cursor"
    .parameter "crossProcessCursor"

    .prologue
    .line 3115
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 3116
    iput-object p2, p0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    .line 3117
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 3122
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 3131
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
