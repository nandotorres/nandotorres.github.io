git add .
git commit -am "$1"
echo "Gerar o site?"
select yn in "Yes" "No"; do
    case $yn in
       Yes ) jekyll build; break;;
       No ) break;;
    esac
done

echo "Atualizar o blog no github?"
select yn in "Yes" "No"; do
  case $yn in 
    Yes ) cd _site; git add .; git commit -am "$1"; git push origin $2; cd ..;break;;
    No ) break;;
  esac
done
