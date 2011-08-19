.class public Lcom/android/contacts/vcard/ImportRequest;
.super Ljava/lang/Object;
.source "ImportRequest.java"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final entryCount:I

.field public final estimatedCharset:Ljava/lang/String;

.field public final estimatedVCardType:I

.field public final originalUri:Landroid/net/Uri;

.field public final uri:Landroid/net/Uri;

.field public final vcardVersion:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;II)V
    .locals 0
    .parameter "account"
    .parameter "uri"
    .parameter "originalUri"
    .parameter "estimatedType"
    .parameter "estimatedCharset"
    .parameter "vcardVersion"
    .parameter "entryCount"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 95
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    .line 96
    iput-object p3, p0, Lcom/android/contacts/vcard/ImportRequest;->originalUri:Landroid/net/Uri;

    .line 97
    iput p4, p0, Lcom/android/contacts/vcard/ImportRequest;->estimatedVCardType:I

    .line 98
    iput-object p5, p0, Lcom/android/contacts/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 99
    iput p6, p0, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    .line 100
    iput p7, p0, Lcom/android/contacts/vcard/ImportRequest;->entryCount:I

    .line 101
    return-void
.end method
