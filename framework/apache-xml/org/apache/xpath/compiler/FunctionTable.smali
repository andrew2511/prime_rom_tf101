.class public Lorg/apache/xpath/compiler/FunctionTable;
.super Ljava/lang/Object;
.source "FunctionTable.java"


# static fields
.field public static final FUNC_BOOLEAN:I = 0xe

.field public static final FUNC_CEILING:I = 0x11

.field public static final FUNC_CONCAT:I = 0x1b

.field public static final FUNC_CONTAINS:I = 0x16

.field public static final FUNC_COUNT:I = 0x3

.field public static final FUNC_CURRENT:I = 0x0

.field public static final FUNC_DOCLOCATION:I = 0x23

.field public static final FUNC_EXT_ELEM_AVAILABLE:I = 0x22

.field public static final FUNC_EXT_FUNCTION_AVAILABLE:I = 0x21

.field public static final FUNC_FALSE:I = 0xd

.field public static final FUNC_FLOOR:I = 0x10

.field public static final FUNC_GENERATE_ID:I = 0xa

.field public static final FUNC_ID:I = 0x4

.field public static final FUNC_KEY:I = 0x5

.field public static final FUNC_LANG:I = 0x20

.field public static final FUNC_LAST:I = 0x1

.field public static final FUNC_LOCAL_PART:I = 0x7

.field public static final FUNC_NAMESPACE:I = 0x8

.field public static final FUNC_NORMALIZE_SPACE:I = 0x19

.field public static final FUNC_NOT:I = 0xb

.field public static final FUNC_NUMBER:I = 0xf

.field public static final FUNC_POSITION:I = 0x2

.field public static final FUNC_QNAME:I = 0x9

.field public static final FUNC_ROUND:I = 0x12

.field public static final FUNC_STARTS_WITH:I = 0x15

.field public static final FUNC_STRING:I = 0x14

.field public static final FUNC_STRING_LENGTH:I = 0x1e

.field public static final FUNC_SUBSTRING:I = 0x1d

.field public static final FUNC_SUBSTRING_AFTER:I = 0x18

.field public static final FUNC_SUBSTRING_BEFORE:I = 0x17

.field public static final FUNC_SUM:I = 0x13

.field public static final FUNC_SYSTEM_PROPERTY:I = 0x1f

.field public static final FUNC_TRANSLATE:I = 0x1a

.field public static final FUNC_TRUE:I = 0xc

.field public static final FUNC_UNPARSED_ENTITY_URI:I = 0x24

.field private static final NUM_ALLOWABLE_ADDINS:I = 0x1e

.field private static final NUM_BUILT_IN_FUNCS:I = 0x25

.field private static m_functionID:Ljava/util/HashMap;

.field private static m_functions:[Ljava/lang/Class;


# instance fields
.field private m_funcNextFreeIndex:I

.field private m_functionID_customer:Ljava/util/HashMap;

.field private m_functions_customer:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    .line 177
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    .line 178
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const-class v1, Lorg/apache/xpath/functions/FuncCurrent;

    aput-object v1, v0, v3

    .line 179
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const-class v1, Lorg/apache/xpath/functions/FuncLast;

    aput-object v1, v0, v4

    .line 180
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const-class v1, Lorg/apache/xpath/functions/FuncPosition;

    aput-object v1, v0, v5

    .line 181
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const-class v1, Lorg/apache/xpath/functions/FuncCount;

    aput-object v1, v0, v6

    .line 182
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const-class v1, Lorg/apache/xpath/functions/FuncId;

    aput-object v1, v0, v7

    .line 183
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/4 v1, 0x5

    const-class v2, Lorg/apache/xalan/templates/FuncKey;

    aput-object v2, v0, v1

    .line 185
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/4 v1, 0x7

    const-class v2, Lorg/apache/xpath/functions/FuncLocalPart;

    aput-object v2, v0, v1

    .line 187
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x8

    const-class v2, Lorg/apache/xpath/functions/FuncNamespace;

    aput-object v2, v0, v1

    .line 189
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x9

    const-class v2, Lorg/apache/xpath/functions/FuncQname;

    aput-object v2, v0, v1

    .line 190
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0xa

    const-class v2, Lorg/apache/xpath/functions/FuncGenerateId;

    aput-object v2, v0, v1

    .line 192
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0xb

    const-class v2, Lorg/apache/xpath/functions/FuncNot;

    aput-object v2, v0, v1

    .line 193
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0xc

    const-class v2, Lorg/apache/xpath/functions/FuncTrue;

    aput-object v2, v0, v1

    .line 194
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0xd

    const-class v2, Lorg/apache/xpath/functions/FuncFalse;

    aput-object v2, v0, v1

    .line 195
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0xe

    const-class v2, Lorg/apache/xpath/functions/FuncBoolean;

    aput-object v2, v0, v1

    .line 196
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x20

    const-class v2, Lorg/apache/xpath/functions/FuncLang;

    aput-object v2, v0, v1

    .line 197
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0xf

    const-class v2, Lorg/apache/xpath/functions/FuncNumber;

    aput-object v2, v0, v1

    .line 198
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x10

    const-class v2, Lorg/apache/xpath/functions/FuncFloor;

    aput-object v2, v0, v1

    .line 199
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x11

    const-class v2, Lorg/apache/xpath/functions/FuncCeiling;

    aput-object v2, v0, v1

    .line 200
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x12

    const-class v2, Lorg/apache/xpath/functions/FuncRound;

    aput-object v2, v0, v1

    .line 201
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x13

    const-class v2, Lorg/apache/xpath/functions/FuncSum;

    aput-object v2, v0, v1

    .line 202
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x14

    const-class v2, Lorg/apache/xpath/functions/FuncString;

    aput-object v2, v0, v1

    .line 203
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x15

    const-class v2, Lorg/apache/xpath/functions/FuncStartsWith;

    aput-object v2, v0, v1

    .line 205
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x16

    const-class v2, Lorg/apache/xpath/functions/FuncContains;

    aput-object v2, v0, v1

    .line 206
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x17

    const-class v2, Lorg/apache/xpath/functions/FuncSubstringBefore;

    aput-object v2, v0, v1

    .line 208
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x18

    const-class v2, Lorg/apache/xpath/functions/FuncSubstringAfter;

    aput-object v2, v0, v1

    .line 210
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x19

    const-class v2, Lorg/apache/xpath/functions/FuncNormalizeSpace;

    aput-object v2, v0, v1

    .line 212
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x1a

    const-class v2, Lorg/apache/xpath/functions/FuncTranslate;

    aput-object v2, v0, v1

    .line 214
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x1b

    const-class v2, Lorg/apache/xpath/functions/FuncConcat;

    aput-object v2, v0, v1

    .line 215
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x1f

    const-class v2, Lorg/apache/xpath/functions/FuncSystemProperty;

    aput-object v2, v0, v1

    .line 217
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x21

    const-class v2, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    aput-object v2, v0, v1

    .line 219
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x22

    const-class v2, Lorg/apache/xpath/functions/FuncExtElementAvailable;

    aput-object v2, v0, v1

    .line 221
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x1d

    const-class v2, Lorg/apache/xpath/functions/FuncSubstring;

    aput-object v2, v0, v1

    .line 223
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x1e

    const-class v2, Lorg/apache/xpath/functions/FuncStringLength;

    aput-object v2, v0, v1

    .line 225
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x23

    const-class v2, Lorg/apache/xpath/functions/FuncDoclocation;

    aput-object v2, v0, v1

    .line 227
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const/16 v1, 0x24

    const-class v2, Lorg/apache/xpath/functions/FuncUnparsedEntityURI;

    aput-object v2, v0, v1

    .line 232
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "current"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "last"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "position"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "count"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "id"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "key"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "local-name"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "namespace-uri"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "name"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "generate-id"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "not"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "true"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "false"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "boolean"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "lang"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "number"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "floor"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "ceiling"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "round"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "sum"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "string"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "starts-with"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "contains"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "substring-before"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "substring-after"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "normalize-space"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "translate"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "concat"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "system-property"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "function-available"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "element-available"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "substring"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "string-length"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "unparsed-entity-uri"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const-string v1, "document-location"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    .line 173
    const/16 v0, 0x25

    iput v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    .line 305
    return-void
.end method


# virtual methods
.method public functionAvailable(Ljava/lang/String;)Z
    .registers 5
    .parameter "methName"

    .prologue
    const/4 v2, 0x1

    .line 400
    sget-object v1, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, tblEntry:Ljava/lang/Object;
    if-eqz v0, :cond_b

    move v1, v2

    .line 404
    :goto_a
    return v1

    .line 403
    :cond_b
    iget-object v1, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_15

    move v1, v2

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method getFunction(I)Lorg/apache/xpath/functions/Function;
    .registers 5
    .parameter "which"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x25

    .line 332
    if-ge p1, v2, :cond_10

    .line 333
    :try_start_4
    sget-object v1, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/functions/Function;

    move-object v1, p0

    .line 335
    :goto_f
    return-object v1

    .restart local p0
    :cond_10
    iget-object v1, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    sub-int v2, p1, v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/functions/Function;
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_1c} :catch_2a

    move-object v1, p0

    goto :goto_f

    .line 337
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 338
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 340
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getFunctionID(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "key"

    .prologue
    .line 352
    iget-object v1, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    .local v0, id:Ljava/lang/Object;
    if-nez v0, :cond_e

    sget-object v1, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 354
    :cond_e
    return-object v0
.end method

.method getFunctionName(I)Ljava/lang/String;
    .registers 4
    .parameter "funcID"

    .prologue
    const/16 v1, 0x25

    .line 312
    if-ge p1, v1, :cond_d

    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public installFunction(Ljava/lang/String;Ljava/lang/Class;)I
    .registers 8
    .parameter "name"
    .parameter "func"

    .prologue
    const/16 v4, 0x25

    .line 367
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionID(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 369
    .local v1, funcIndexObj:Ljava/lang/Object;
    if-eqz v1, :cond_27

    .line 371
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #funcIndexObj:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 373
    .local v0, funcIndex:I
    if-ge v0, v4, :cond_20

    .line 374
    iget v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    .end local v0           #funcIndex:I
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    .line 375
    .restart local v0       #funcIndex:I
    iget-object v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_20
    iget-object v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    sub-int v3, v0, v4

    aput-object p2, v2, v3

    .line 388
    :goto_26
    return v0

    .line 381
    .end local v0           #funcIndex:I
    .restart local v1       #funcIndexObj:Ljava/lang/Object;
    :cond_27
    iget v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    .line 383
    .restart local v0       #funcIndex:I
    iget-object v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    sub-int v3, v0, v4

    aput-object p2, v2, v3

    .line 385
    iget-object v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26
.end method
