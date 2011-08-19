.class public Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;
.super Ljava/lang/Object;
.source "SECNamedCurves.java"


# static fields
.field static final curves:Ljava/util/Hashtable;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;

.field static secp112r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp112r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp128r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp128r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect233k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect233r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect239k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect283k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect283r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect409k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect409r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect571k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect571r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$1;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$2;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$3;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$4;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 131
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$5;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 157
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$6;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 183
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$7;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 209
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$8;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 235
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$9;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$9;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 261
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$10;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$10;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 287
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$11;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$11;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 313
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$12;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$12;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 339
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$13;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$13;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 365
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$14;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$14;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 391
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$15;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$15;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 417
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$16;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$16;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 444
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$17;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$17;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 471
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$18;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$18;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 500
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$19;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$19;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 529
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$20;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$20;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 558
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$21;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$21;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 587
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$22;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$22;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 616
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$23;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$23;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 643
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$24;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$24;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 670
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$25;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$25;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 697
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$26;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$26;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 724
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$27;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$27;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 751
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$28;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$28;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 780
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$29;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$29;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 809
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$30;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$30;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 836
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$31;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$31;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 863
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$32;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$32;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 892
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$33;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$33;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 919
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 920
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    .line 921
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    .line 932
    const-string v0, "secp112r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 933
    const-string v0, "secp112r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 934
    const-string v0, "secp128r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 935
    const-string v0, "secp128r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 936
    const-string v0, "secp160k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 937
    const-string v0, "secp160r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 938
    const-string v0, "secp160r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 939
    const-string v0, "secp192k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 940
    const-string v0, "secp192r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 941
    const-string v0, "secp224k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 942
    const-string v0, "secp224r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 943
    const-string v0, "secp256k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 944
    const-string v0, "secp256r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 945
    const-string v0, "secp384r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 946
    const-string v0, "secp521r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 948
    const-string v0, "sect113r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 949
    const-string v0, "sect113r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 950
    const-string v0, "sect131r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 951
    const-string v0, "sect131r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 952
    const-string v0, "sect163k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 953
    const-string v0, "sect163r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 954
    const-string v0, "sect163r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 955
    const-string v0, "sect193r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 956
    const-string v0, "sect193r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 957
    const-string v0, "sect233k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 958
    const-string v0, "sect233r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 959
    const-string v0, "sect239k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 960
    const-string v0, "sect283k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 961
    const-string v0, "sect283r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 962
    const-string v0, "sect409k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 963
    const-string v0, "sect409r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 964
    const-string v0, "sect571k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 965
    const-string v0, "sect571r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 966
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .registers 4
    .parameter "name"
    .parameter "oid"
    .parameter "holder"

    .prologue
    .line 925
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    return-void
.end method

.method private static fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 4
    .parameter "hex"

    .prologue
    .line 21
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 4
    .parameter "name"

    .prologue
    .line 971
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 973
    .local v0, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    if-eqz v0, :cond_13

    .line 975
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 978
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .parameter "oid"

    .prologue
    .line 990
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 992
    .local v0, holder:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-eqz v0, :cond_f

    .line 994
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 997
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .parameter "oid"

    .prologue
    .line 1018
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .registers 1

    .prologue
    .line 1027
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 3
    .parameter "name"

    .prologue
    .line 1009
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object p0
.end method
