.class public interface abstract Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;
.super Ljava/lang/Object;
.source "CMSObjectIdentifiers.java"


# static fields
.field public static final authEnvelopedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final authenticatedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final compressedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final data:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final digestedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final encryptedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final envelopedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signedAndEnvelopedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 9
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 10
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 11
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedAndEnvelopedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedAndEnvelopedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 12
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->digestedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 13
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->encryptedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 14
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_authData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authenticatedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_compressedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->compressedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_authEnvelopedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
