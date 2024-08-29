function base64ToBlob(base64String, contentType = '') {
    const byteCharacters = atob(base64String);
    const byteArrays = [];

    for (let i = 0; i < byteCharacters.length; i++) {
        byteArrays.push(byteCharacters.charCodeAt(i));
    }

    const byteArray = new Uint8Array(byteArrays);
    return new Blob([byteArray], { type: contentType });
}

async function uploadToS3() {
  //  const file = new Blob([JSON.stringify(fileDropzone1?.value[0]?.base64Data)]);
  //  const file = fileDropzone1.value[0]?.base64Data


  const file = fileDropzone1.value[0];
  //  const byteCharacters = atob(file.base64Data);
  //  const byteNumbers = new Array(byteCharacters.length);
  
  //  for (let i = 0; i < byteCharacters.length; i++) {
  //    byteNumbers[i] = byteCharacters.charCodeAt(i);
  //  }
  
  //  const byteArray = new Uint8Array(byteNumbers);
  //  const blob = new Blob([byteArray], { type: file.type });
  const blob = base64ToBlob(file.base64Data, file.type);
  
  //  console.log('blob is',blob)
  
    const requestOptions = {
      method: 'PUT',
      body: blob,
      //  headers: {
      //    'Content-Type': "application/pdf",
      //  },
    };

    const response = await fetch(certificatePutUrl.value, requestOptions);
  console.log(response)

    if (!response.ok) {
      throw new Error(`Failed to upload file ${file.name}: ${response.statusText}`);
    }
}

const result = await uploadToS3();
console.log(result)
return result;