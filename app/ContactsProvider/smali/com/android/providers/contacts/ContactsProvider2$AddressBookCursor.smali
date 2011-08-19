.class public Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;
.super Landroid/database/CursorWrapper;
.source "ContactsProvider2.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddressBookCursor"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private final mCursor:Landroid/database/CrossProcessCursor;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/database/CrossProcessCursor;[Ljava/lang/String;[I)V
    .locals 2
    .parameter
    .parameter "cursor"
    .parameter "titles"
    .parameter "counts"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 307
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 308
    iput-object p2, p0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;->mBundle:Landroid/os/Bundle;

    .line 310
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;->mBundle:Landroid/os/Bundle;

    const-string v1, "address_book_index_titles"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;->mBundle:Landroid/os/Bundle;

    const-string v1, "address_book_index_counts"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 312
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 322
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
