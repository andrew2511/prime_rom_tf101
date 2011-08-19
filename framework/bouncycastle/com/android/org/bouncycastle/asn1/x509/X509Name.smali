.class public Lcom/android/org/bouncycastle/asn1/x509/X509Name;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X509Name.java"


# static fields
.field public static final BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DMD_NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DefaultLookUp:Ljava/util/Hashtable;

.field public static DefaultReverse:Z

.field public static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final E:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GENDER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GENERATION:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GIVENNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final INITIALS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final OIDLookUp:Ljava/util/Hashtable;

.field public static final OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PSEUDONYM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final RFC1779Symbols:Ljava/util/Hashtable;

.field public static final RFC2253Symbols:Ljava/util/Hashtable;

.field public static final SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SURNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SymbolLookUp:Ljava/util/Hashtable;

.field public static final T:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UnstructuredName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

.field private elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 67
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.9"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 93
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 96
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 101
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 107
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 113
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 119
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.65"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 126
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 132
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 138
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 152
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 159
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.36.8.3.14"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 165
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 170
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.54"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DMD_NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 175
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 180
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 186
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 191
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 192
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 197
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 202
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 207
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 213
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    .line 219
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    .line 225
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    .line 231
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    .line 236
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    .line 242
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OIDLookUp:Ljava/util/Hashtable;

    .line 248
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SymbolLookUp:Ljava/util/Hashtable;

    .line 257
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SERIALNUMBER"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SURNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "GIVENNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "INITIALS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "GENERATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "unstructuredAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "unstructuredName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UniqueIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Pseudonym"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PostalAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "NameAtBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CountryOfCitizenship"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CountryOfResidence"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Gender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PlaceOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DateOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PostalCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "BusinessCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "TelephoneNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "c"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "o"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "t"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "ou"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "cn"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "l"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "st"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "sn"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "serialnumber"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "street"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "emailaddress"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dc"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "e"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "uid"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "surname"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "givenname"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "initials"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "generation"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "unstructuredaddress"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "unstructuredname"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "uniqueidentifier"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dn"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "pseudonym"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postaladdress"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "nameofbirth"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "countryofcitizenship"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "countryofresidence"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "gender"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "placeofbirth"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dateofbirth"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postalcode"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "businesscategory"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "telephonenumber"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "name"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 15
    .parameter "seq"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 390
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 344
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 346
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;-><init>()V

    iput-object v9, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    .line 391
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 393
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 395
    .local v1, e:Ljava/util/Enumeration;
    :cond_15
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_af

    .line 397
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 399
    .local v5, set:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v9

    if-ge v2, v9, :cond_15

    .line 401
    invoke-virtual {v5, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 403
    .local v4, s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_41

    .line 405
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "badly sized pair"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 409
    :cond_41
    invoke-virtual {v4, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    .line 411
    .local v3, key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v4, v12}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    .line 413
    .local v7, value:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    instance-of v9, v7, Lcom/android/org/bouncycastle/asn1/DERString;

    if-eqz v9, :cond_89

    instance-of v9, v7, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    if-nez v9, :cond_89

    .line 415
    check-cast v7, Lcom/android/org/bouncycastle/asn1/DERString;

    .end local v7           #value:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, v:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_87

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_87

    .line 418
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 429
    .end local v6           #v:Ljava/lang/String;
    .local v8, valueStr:Ljava/lang/String;
    :goto_7c
    if-eqz v2, :cond_ad

    move v0, v12

    .line 430
    .local v0, added:Z
    :goto_7f
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v9, v3, v8, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Z)V

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 422
    .end local v0           #added:Z
    .end local v8           #valueStr:Ljava/lang/String;
    .restart local v6       #v:Ljava/lang/String;
    :cond_87
    move-object v8, v6

    .restart local v8       #valueStr:Ljava/lang/String;
    goto :goto_7c

    .line 427
    .end local v6           #v:Ljava/lang/String;
    .end local v8           #valueStr:Ljava/lang/String;
    .restart local v7       #value:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_89
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->bytesToString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #valueStr:Ljava/lang/String;
    goto :goto_7c

    .end local v7           #value:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_ad
    move v0, v11

    .line 429
    goto :goto_7f

    .line 434
    .end local v2           #i:I
    .end local v3           #key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v5           #set:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v8           #valueStr:Ljava/lang/String;
    :cond_af
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "dirName"

    .prologue
    .line 583
    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 5
    .parameter "dirName"
    .parameter "converter"

    .prologue
    .line 596
    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 597
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 3
    .parameter "attributes"

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    .line 452
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .registers 4
    .parameter "ordering"
    .parameter "attributes"

    .prologue
    .line 466
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 467
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 12
    .parameter "ordering"
    .parameter "attributes"
    .parameter "converter"

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 344
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 346
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;-><init>()V

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    .line 486
    const/4 v3, 0x0

    .line 487
    .local v3, problem:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 489
    if-eqz p1, :cond_55

    .line 491
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v1, v5, :cond_28

    .line 493
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 495
    .local v2, key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 496
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_4d

    .line 498
    move-object v3, v2

    .line 522
    .end local v1           #i:I
    .end local v2           #key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #value:Ljava/lang/String;
    :cond_28
    :goto_28
    if-eqz v3, :cond_75

    .line 524
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No attribute for object id - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - passed to distinguished name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 501
    .restart local v1       #i:I
    .restart local v2       #key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v4       #value:Ljava/lang/String;
    :cond_4d
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v5, v2, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 506
    .end local v1           #i:I
    .end local v2           #key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #value:Ljava/lang/String;
    :cond_55
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 508
    .local v0, e:Ljava/util/Enumeration;
    :goto_59
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 510
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 512
    .restart local v2       #key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 513
    .restart local v4       #value:Ljava/lang/String;
    if-nez v4, :cond_6f

    .line 515
    move-object v3, v2

    .line 516
    goto :goto_28

    .line 518
    :cond_6f
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v5, v2, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    goto :goto_59

    .line 527
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v2           #key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #value:Ljava/lang/String;
    :cond_75
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 4
    .parameter "oids"
    .parameter "values"

    .prologue
    .line 536
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Vector;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 537
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 8
    .parameter "oids"
    .parameter "values"
    .parameter "converter"

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 346
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    .line 550
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 552
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_21

    .line 554
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "oids vector must be same length as values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 560
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 564
    :cond_3c
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 4
    .parameter "reverse"
    .parameter "dirName"

    .prologue
    .line 609
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 5
    .parameter "reverse"
    .parameter "dirName"
    .parameter "converter"

    .prologue
    .line 624
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 625
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .registers 5
    .parameter "reverse"
    .parameter "lookUp"
    .parameter "dirName"

    .prologue
    .line 645
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 646
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 24
    .parameter "reverse"
    .parameter "lookUp"
    .parameter "dirName"
    .parameter "converter"

    .prologue
    .line 688
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 344
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 346
    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-direct/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    .line 689
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 690
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 692
    .local v5, nTok:Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;
    :cond_24
    :goto_24
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_da

    .line 694
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 695
    .local v11, token:Ljava/lang/String;
    const/16 v16, 0x3d

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 697
    .local v4, index:I
    const/16 v16, -0x1

    move v0, v4

    move/from16 v1, v16

    if-ne v0, v1, :cond_46

    .line 699
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "badly formatted directory string"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 702
    :cond_46
    const/16 v16, 0x0

    move-object v0, v11

    move/from16 v1, v16

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 703
    .local v6, name:Ljava/lang/String;
    add-int/lit8 v16, v4, 0x1

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 704
    .local v14, value:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    .line 706
    .local v9, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/16 v16, 0x2b

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    if-lez v16, :cond_cb

    .line 708
    new-instance v13, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;

    const/16 v16, 0x2b

    move-object v0, v13

    move-object v1, v14

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 709
    .local v13, vTok:Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 712
    .local v12, v:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v9

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 715
    :goto_89
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_24

    .line 717
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 718
    .local v10, sv:Ljava/lang/String;
    const/16 v16, 0x3d

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 720
    .local v7, ndx:I
    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 721
    .local v8, nm:Ljava/lang/String;
    add-int/lit8 v16, v7, 0x1

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 723
    .local v15, vl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v15

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Z)V

    goto :goto_89

    .line 730
    .end local v7           #ndx:I
    .end local v8           #nm:Ljava/lang/String;
    .end local v10           #sv:Ljava/lang/String;
    .end local v12           #v:Ljava/lang/String;
    .end local v13           #vTok:Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;
    .end local v15           #vl:Ljava/lang/String;
    :cond_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v9

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 735
    .end local v4           #index:I
    .end local v6           #name:Ljava/lang/String;
    .end local v9           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v11           #token:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_da
    if-eqz p1, :cond_ec

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->reverse()Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    .line 741
    :cond_ec
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V
    .registers 12
    .parameter "buf"
    .parameter "oidSymbols"
    .parameter "oid"
    .parameter "value"

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x3d

    .line 1140
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1142
    .local v2, sym:Ljava/lang/String;
    if-eqz v2, :cond_80

    .line 1144
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1151
    :goto_f
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1153
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1155
    .local v1, index:I
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1157
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1159
    .local v0, end:I
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_36

    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_36

    const/4 v3, 0x1

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_36

    .line 1161
    add-int/lit8 v1, v1, 0x2

    .line 1164
    :cond_36
    :goto_36
    if-eq v1, v0, :cond_88

    .line 1166
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_74

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_74

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_74

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_74

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_74

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_74

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_74

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_7d

    .line 1175
    :cond_74
    const-string v3, "\\"

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    add-int/lit8 v1, v1, 0x1

    .line 1177
    add-int/lit8 v0, v0, 0x1

    .line 1180
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 1148
    .end local v0           #end:I
    .end local v1           #index:I
    :cond_80
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 1182
    .restart local v0       #end:I
    .restart local v1       #index:I
    :cond_88
    return-void
.end method

.method private bytesToString([B)Ljava/lang/String;
    .registers 5
    .parameter "data"

    .prologue
    .line 1272
    array-length v2, p1

    new-array v0, v2, [C

    .line 1274
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_11

    .line 1276
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1274
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1279
    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    .line 1082
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2d

    .line 1086
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    .line 1088
    .local v0, obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/DERString;

    if-eqz v2, :cond_2d

    .line 1090
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERString;

    .end local v0           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1094
    :cond_2d
    return-object v1
.end method

.method private decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 7
    .parameter "name"
    .parameter "lookUp"

    .prologue
    const/4 v3, 0x0

    .line 652
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OID."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 654
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 667
    :goto_17
    return-object v1

    .line 656
    :cond_18
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2e

    .line 658
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_17

    .line 661
    :cond_2e
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 662
    .local v0, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    if-nez v0, :cond_59

    .line 664
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_59
    move-object v1, v0

    .line 667
    goto :goto_17
.end method

.method private decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .registers 6
    .parameter "oValue"

    .prologue
    .line 1101
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    .line 1103
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 1105
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, oValue:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1068
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1073
    const/4 v2, 0x0

    .line 1077
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x1

    goto :goto_1d
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 365
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 4
    .parameter "obj"

    .prologue
    .line 371
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    if-eqz v0, :cond_a

    .line 373
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .end local p0
    move-object v0, p0

    .line 377
    :goto_9
    return-object v0

    .line 375
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 377
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 380
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "str"

    .prologue
    const/16 v5, 0x20

    .line 1112
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1114
    .local v3, res:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 1116
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1118
    .local v0, c1:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1120
    const/4 v2, 0x1

    .local v2, k:I
    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 1122
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1123
    .local v1, c2:C
    if-ne v0, v5, :cond_24

    if-eq v1, v5, :cond_27

    .line 1125
    :cond_24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1127
    :cond_27
    move v0, v1

    .line 1120
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1131
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #k:I
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 23
    .parameter "obj"

    .prologue
    .line 963
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_9

    .line 965
    const/16 v18, 0x1

    .line 1058
    :goto_8
    return v18

    .line 968
    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move/from16 v18, v0

    if-nez v18, :cond_1c

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move/from16 v18, v0

    if-nez v18, :cond_1c

    .line 970
    const/16 v18, 0x0

    goto :goto_8

    .line 973
    :cond_1c
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    .line 975
    .local v4, derO:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_35

    .line 977
    const/16 v18, 0x1

    goto :goto_8

    .line 984
    :cond_35
    :try_start_35
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_38} :catch_54

    move-result-object v15

    .line 992
    .local v15, other:Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v14

    .line 994
    .local v14, orderingSize:I
    move-object v0, v15

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v18

    move v0, v14

    move/from16 v1, v18

    if-eq v0, v1, :cond_58

    .line 997
    const/16 v18, 0x0

    goto :goto_8

    .line 986
    .end local v14           #orderingSize:I
    .end local v15           #other:Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :catch_54
    move-exception v5

    .line 988
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const/16 v18, 0x0

    goto :goto_8

    .line 1000
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v14       #orderingSize:I
    .restart local v15       #other:Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :cond_58
    new-array v9, v14, [Z

    .line 1004
    .local v9, indexes:[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v18

    move-object v0, v15

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a4

    .line 1007
    const/16 v16, 0x0

    .line 1008
    .local v16, start:I
    move v6, v14

    .line 1009
    .local v6, end:I
    const/4 v3, 0x1

    .line 1018
    .local v3, delta:I
    :goto_7b
    move/from16 v8, v16

    .local v8, i:I
    :goto_7d
    if-eq v8, v6, :cond_e1

    .line 1020
    const/4 v7, 0x0

    .line 1022
    .local v7, found:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v13

    .line 1023
    .local v13, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v17

    .line 1026
    .local v17, value:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_9b
    if-ge v10, v14, :cond_d9

    .line 1028
    aget-boolean v18, v9, v10

    if-eqz v18, :cond_ab

    .line 1026
    :cond_a1
    add-int/lit8 v10, v10, 0x1

    goto :goto_9b

    .line 1013
    .end local v3           #delta:I
    .end local v6           #end:I
    .end local v7           #found:Z
    .end local v8           #i:I
    .end local v10           #j:I
    .end local v13           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v16           #start:I
    .end local v17           #value:Ljava/lang/String;
    :cond_a4
    const/16 v18, 0x1

    sub-int v16, v14, v18

    .line 1014
    .restart local v16       #start:I
    const/4 v6, -0x1

    .line 1015
    .restart local v6       #end:I
    const/4 v3, -0x1

    .restart local v3       #delta:I
    goto :goto_7b

    .line 1034
    .restart local v7       #found:Z
    .restart local v8       #i:I
    .restart local v10       #j:I
    .restart local v13       #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v17       #value:Ljava/lang/String;
    :cond_ab
    move-object v0, v15

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v11

    .line 1037
    .local v11, oOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v13, v11}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a1

    .line 1040
    move-object v0, v15

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v12

    .line 1043
    .local v12, oValue:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a1

    .line 1045
    const/16 v18, 0x1

    aput-boolean v18, v9, v10

    .line 1046
    const/4 v7, 0x1

    .line 1052
    .end local v11           #oOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v12           #oValue:Ljava/lang/String;
    :cond_d9
    if-nez v7, :cond_df

    .line 1054
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 1018
    :cond_df
    add-int/2addr v8, v3

    goto :goto_7d

    .line 1058
    .end local v7           #found:Z
    .end local v10           #j:I
    .end local v13           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v17           #value:Ljava/lang/String;
    :cond_e1
    const/16 v18, 0x1

    goto/16 :goto_8
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .registers 16
    .parameter "obj"
    .parameter "inOrder"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 865
    if-nez p2, :cond_9

    .line 867
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 932
    :goto_8
    return v10

    .line 870
    :cond_9
    if-ne p1, p0, :cond_d

    move v10, v12

    .line 872
    goto :goto_8

    .line 875
    :cond_d
    instance-of v10, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    if-nez v10, :cond_17

    instance-of v10, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v10, :cond_17

    move v10, v11

    .line 877
    goto :goto_8

    .line 880
    :cond_17
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-object v10, v0

    invoke-interface {v10}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 882
    .local v1, derO:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    move v10, v12

    .line 884
    goto :goto_8

    .line 891
    :cond_2b
    :try_start_2b
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2e} :catch_3f

    move-result-object v8

    .line 899
    .local v8, other:Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    iget-object v10, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v7

    .line 901
    .local v7, orderingSize:I
    iget-object v10, v8, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v10

    if-eq v7, v10, :cond_42

    move v10, v11

    .line 904
    goto :goto_8

    .line 893
    .end local v7           #orderingSize:I
    .end local v8           #other:Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :catch_3f
    move-exception v2

    .local v2, e:Ljava/lang/IllegalArgumentException;
    move v10, v11

    .line 895
    goto :goto_8

    .line 907
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #orderingSize:I
    .restart local v8       #other:Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :cond_42
    const/4 v3, 0x0

    .local v3, i:I
    :goto_43
    if-ge v3, v7, :cond_70

    .line 910
    iget-object v10, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v10, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    .line 911
    .local v6, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    iget-object v10, v8, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v10, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    .line 914
    .local v4, oOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 917
    iget-object v10, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v10, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v9

    .line 918
    .local v9, value:Ljava/lang/String;
    iget-object v10, v8, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v10, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 921
    .local v5, oValue:Ljava/lang/String;
    invoke-direct {p0, v9, v5}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6d

    move v10, v11

    .line 923
    goto :goto_8

    .end local v5           #oValue:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_6b
    move v10, v11

    .line 928
    goto :goto_8

    .line 907
    .restart local v5       #oValue:Ljava/lang/String;
    .restart local v9       #value:Ljava/lang/String;
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .end local v4           #oOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5           #oValue:Ljava/lang/String;
    .end local v6           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v9           #value:Ljava/lang/String;
    :cond_70
    move v10, v12

    .line 932
    goto :goto_8
.end method

.method public getOIDs()Ljava/util/Vector;
    .registers 5

    .prologue
    .line 749
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 750
    .local v2, v:Ljava/util/Vector;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v1

    .line 752
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_1a

    .line 754
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 757
    :cond_1a
    return-object v2
.end method

.method public getValues()Ljava/util/Vector;
    .registers 5

    .prologue
    .line 767
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 769
    .local v2, v:Ljava/util/Vector;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v1

    .line 771
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-eq v0, v1, :cond_1a

    .line 773
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 777
    :cond_1a
    return-object v2
.end method

.method public getValues(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/util/Vector;
    .registers 9
    .parameter "oid"

    .prologue
    const/4 v6, 0x1

    .line 787
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 788
    .local v2, v:Ljava/util/Vector;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v1

    .line 791
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-eq v0, v1, :cond_47

    .line 793
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 795
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, val:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_43

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_43

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_43

    .line 799
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 791
    .end local v3           #val:Ljava/lang/String;
    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 803
    .restart local v3       #val:Ljava/lang/String;
    :cond_43
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_40

    .line 809
    .end local v3           #val:Ljava/lang/String;
    :cond_47
    return-object v2
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 937
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    if-eqz v2, :cond_7

    .line 939
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    .line 955
    :goto_6
    return v2

    .line 942
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    .line 945
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v2

    if-eq v0, v2, :cond_2d

    .line 947
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 952
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    .line 945
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 955
    .end local v1           #value:Ljava/lang/String;
    :cond_2d
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    goto :goto_6
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 10

    .prologue
    .line 814
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v8, :cond_70

    .line 816
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 817
    .local v7, vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 818
    .local v3, sVec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .line 820
    .local v1, lstOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v4

    .line 822
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-eq v0, v4, :cond_61

    .line 824
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 825
    .local v6, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v8, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    .line 827
    .local v2, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 829
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v8, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 831
    .local v5, str:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    invoke-virtual {v8, v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;->getConvertedValue(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 833
    if-eqz v1, :cond_3f

    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v8, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getAdded(I)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 837
    :cond_3f
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 847
    :goto_47
    move-object v1, v2

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 841
    :cond_4b
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v3}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 842
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .end local v3           #sVec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 844
    .restart local v3       #sVec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_47

    .line 850
    .end local v2           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5           #str:Ljava/lang/String;
    .end local v6           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_61
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v3}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 852
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 856
    .end local v0           #i:I
    .end local v1           #lstOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v3           #sVec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4           #size:I
    .end local v7           #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_70
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1284
    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ZLjava/util/Hashtable;)Ljava/lang/String;
    .registers 11
    .parameter "reverse"
    .parameter "oidSymbols"

    .prologue
    const/16 v7, 0x2c

    .line 1200
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1201
    .local v1, buf:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1202
    .local v2, components:Ljava/util/Vector;
    const/4 v3, 0x1

    .line 1204
    .local v3, first:Z
    const/4 v0, 0x0

    .line 1207
    .local v0, ava:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_f
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4e

    .line 1210
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getAdded(I)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1212
    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1213
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, p2, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 1207
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1221
    :cond_36
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #ava:Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1222
    .restart local v0       #ava:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, p2, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_33

    .line 1231
    :cond_4e
    if-eqz p1, :cond_70

    .line 1234
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->elems:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v4, v5, v6

    :goto_59
    if-ltz v4, :cond_8c

    .line 1237
    if-eqz v3, :cond_6c

    .line 1239
    const/4 v3, 0x0

    .line 1246
    :goto_5e
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1234
    add-int/lit8 v4, v4, -0x1

    goto :goto_59

    .line 1243
    :cond_6c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5e

    .line 1251
    :cond_70
    const/4 v4, 0x0

    :goto_71
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_8c

    .line 1253
    if-eqz v3, :cond_88

    .line 1255
    const/4 v3, 0x0

    .line 1262
    :goto_7a
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1251
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 1259
    :cond_88
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7a

    .line 1266
    :cond_8c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
